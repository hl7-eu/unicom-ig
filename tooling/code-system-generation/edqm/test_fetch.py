import unittest
import urllib.parse

import generate

class TestFetch(unittest.TestCase):
    def test_generate_api_key(self):
        url = urllib.parse.urlparse('https://standardterms.edqm.eu:443/standardterms/api/v1/classes')
        api_key, http_date = generate.generate_api_key(url, 'foo@bar.org', 'terriblepassword', 'Sun, 06 Nov 2022 17:45:20 GMT')

        self.assertEqual(api_key, 'foo@bar.org|U/rzKraIR/1+8NAj047Q==')
        pass