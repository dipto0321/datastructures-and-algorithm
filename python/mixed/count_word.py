import string


def count_word(sentence):
    word_book = {}
    for word in sentence.lower().split():
        if word in word_book:
            word_book[word] += 1
        else:
            word_book[word] = 1
    print(word_book)


def remove_puncuation(sentence):
    translator = str.maketrans("", "", string.punctuation)
    return sentence.translate(translator)


count_word("Oh what a day what a lovely day")
count_word("oh what a day what a lovely day")
count_word("don't stop believing")
count_word("Oh what a day, what a lovely day!")

count_word(remove_puncuation("Oh what a day, what a lovely day!"))
