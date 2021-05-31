import re


def order(sentence):
    # code here
    if len(sentence) == 0:
        return ""
    res = {re.sub("\D", "", word): word for word in sentence.split()}
    return " ".join([value for _, value in sorted(res.items())])


def order2(sentence):
    return ' '.join(sorted(sentence.split(), key=lambda w: sorted(w)))


print(order("is2 Thi1s T4est 3a"))
print(order2("is2 Thi1s T4est 3a"))
print(order(""))
print(order2(""))
