import os


def get_RootDir():
    return os.getcwd() + "\\"


def replaceValue(xpath: str, old, new):
    newXpath = xpath.replace(old, new)
    return newXpath
