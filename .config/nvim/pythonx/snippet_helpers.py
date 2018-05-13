import re


def camelToDash(camelCase):
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1-\2', camelCase)
    return re.sub('([a-z0-9])([A-Z])', r'\1-\2', s1).lower()
