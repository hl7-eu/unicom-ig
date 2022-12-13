import argparse
import pathlib
import importlib.resources
import jinja2
import pandas as pd

import templates
import data


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', '-o', type=pathlib.Path, default=pathlib.Path('out'), help='output directory')
    args = parser.parse_args()

    fsh_template_text = importlib.resources.read_text(templates, 'value-set.fsh.jinja')
    environment = jinja2.Environment()
    template = environment.from_string(fsh_template_text)

    with importlib.resources.open_text(data, 'sms-substances-list.csv') as f:
        df = pd.read_csv(f)

    # drop all "non-preferred" records
    df = df[df['Is_Preferred_Name'] == True]

    # drop all non english records
    df = df[df['Language'] == 'English']

    # escape double quotes
    df['Substance_Name'] = df['Substance_Name'].str.replace('\\', '\\\\')
    df['Substance_Name'] = df['Substance_Name'].str.replace('"', '\\"')

    # create output dir if doesn't exists
    pathlib.Path.mkdir(args.output, parents=True, exist_ok=True)

    name = 'Substance'
    output_str = template.render(
        df=df
    )

    print(f'Generating {name}...')
    with open(args.output / f'{name}.fsh', 'wt') as output_file:
        output_file.write(output_str)

    pass