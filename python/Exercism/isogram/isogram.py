import re


def is_isogram(string):
    filter_string = re.sub('[\W_]+', '', string).lower()
    return len(filter_string) == len(set(filter_string))
