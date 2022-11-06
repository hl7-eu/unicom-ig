from datetime import datetime
import urllib.parse
import hashlib
import hmac
import base64
import argparse

BASE_URL = urllib.parse.urlparse('https://standardterms.edqm.eu:443/standardterms/api/v1/')

def generate_api_key(url, email, password, http_date=None):
    if http_date is None:
        http_date = datetime.utcnow().strftime('%a, %d %b %G %T GMT')

    string_to_sign = f'GET&{url.path}&{url.hostname}:{url.port}&{http_date}'
    print(string_to_sign)

    message = bytes(string_to_sign, 'utf-8')
    secret = bytes(password, 'utf-8')

    signature = base64.b64encode(hmac.new(secret, message, digestmod=hashlib.sha512).digest()).decode('utf')[-22:]

    api_key = f'{email}|{signature}'
    return api_key

def make_request(endpoint, email, password):
    url = urllib.parse.urlparse(urllib.parse.urljoin(BASE_URL.geturl(), endpoint))
    api_key = generate_api_key(url, email, password)
    pass

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('email', help='email used to access the EDQM api')
    parser.add_argument('password', help='password used to access the EDQM api')
    args = parser.parse_args()

    make_request('classes', args.email, args.password)
    pass