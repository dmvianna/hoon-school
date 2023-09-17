=home-real '{"joined":836179200,"username": "thepaleking",
"name": ["David","Foster","Wallace"],"email": "infinite@jest.com"}'
=home-fixed-need (need (de-json:html home-real))
=home-end (json-to-user home-fixed-need)
