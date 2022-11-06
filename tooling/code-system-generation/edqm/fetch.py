from datetime import datetime
import urllib.parse
import hashlib
import hmac
import base64
import argparse
import requests
import json
import importlib.resources
import templates
import jinja2
from re import sub
import pathlib

BASE_URL = urllib.parse.urlparse('https://standardterms.edqm.eu:443/standardterms/api/v1/')

def generate_api_key(url, email, password, http_date=None):
    if http_date is None:
        http_date = datetime.utcnow().strftime('%a, %d %b %G %T GMT')

    string_to_sign = f'GET&{url.path}&{url.hostname}:{url.port}&{http_date}'

    message = bytes(string_to_sign, 'utf-8')
    secret = bytes(password, 'utf-8')

    signature = base64.b64encode(hmac.new(secret, message, digestmod=hashlib.sha512).digest()).decode('utf')[-22:]

    api_key = f'{email}|{signature}'
    return api_key, http_date

def make_request(endpoint, email, password):
    url = urllib.parse.urlparse(urllib.parse.urljoin(BASE_URL.geturl(), endpoint))
    api_key, http_date = generate_api_key(url, email, password)

    headers = {
        'Host': f'{url.hostname}:{url.port}',
        'Date': http_date,
        'X-STAPI-KEY': api_key,
    }

    resp = requests.get(url.geturl(), headers=headers)

    if resp.status_code != 200:
        raise RuntimeError(f'Response with status code {resp.status_code}')

    return json.loads(resp.text)

def generate_coding_system(output_dir, class_obj, email, password, template):
    # create output dir if doesn't exists
    pathlib.Path.mkdir(output_dir, parents=True, exist_ok=True)

    def to_upper_camel_case(s):
        s = sub(r'(_|-)+', ' ', s).title().replace(' ', '')
        return ''.join([s[0].upper(), s[1:]])

    class_code = class_obj['code']
    code_system = to_upper_camel_case(class_obj['name'])

    full_class_data = make_request(f'full_data_by_class/{class_code}/1/1', email, password)['content']
    
    output_str = template.render(
        code_system=code_system,
        id=class_obj['name'].replace(' ', '-'),
        title=class_obj['name'].capitalize(),
        codes=full_class_data,
    )

    with open(output_dir / f'{code_system}.fsh', 'wt') as output_file:
        output_file.write(output_str)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('email', help='email used to access the EDQM api')
    parser.add_argument('password', help='password used to access the EDQM api')
    parser.add_argument('--output', '-o', type=pathlib.Path, default=pathlib.Path('out'), help='output directory')
    args = parser.parse_args()

    # initialize classes
    print('Fetching edqm class list...')
    classes = make_request('classes', args.email, args.password)['content']

    fsh_template_text = importlib.resources.read_text(templates, 'coding-system.fsh.jinja')
    environment = jinja2.Environment()
    template = environment.from_string(fsh_template_text)

    print(f'Generateting code system for {len(classes)} classes in {args.output}...')
    for class_obj in classes:
        generate_coding_system(args.output, class_obj, args.email, args.password, template)

        class_name = class_obj['name']
        print(f'Generated codesystem for "{class_name}"')
    pass