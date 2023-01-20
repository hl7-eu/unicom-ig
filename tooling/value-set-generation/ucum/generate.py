import argparse
import pathlib
import importlib.resources
import jinja2
import json

import templates
import data

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', '-o', type=pathlib.Path, default=pathlib.Path('out'), help='output directory')
    args = parser.parse_args()

    fsh_template_text = importlib.resources.read_text(templates, 'value-set.fsh.jinja')
    environment = jinja2.Environment()
    template = environment.from_string(fsh_template_text)

    ucum_data_json = importlib.resources.read_text(data, 'ehdsi_ucum.json')
    ucum_data = json.loads(ucum_data_json)

    # create output dir if doesn't exists
    pathlib.Path.mkdir(args.output, parents=True, exist_ok=True)
    
    codes_dict = {}
    for code in ucum_data['valueSets'][0]['valueSet'][0]['conceptList'][0]['concept']:
        key = code['code']
        if key not in codes_dict:
            codes_dict[key] = code

    name = 'EhdsiUcumUnit'
    output_str = template.render(
        name=name,
        instance='ehdsi-ucum-unit',
        title='eHDSI UCUM unit',
        codes=codes_dict.values(),
    )

    print(f'Generating {name}...')
    with open(args.output / f'{name}.fsh', 'wt') as output_file:
        output_file.write(output_str)

    pass