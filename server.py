import re
import heapq
from bottle import route, run, template, request

kwdict = {}
top20kw = []

def process(string):
    words = re.compile('\w+').findall(string)
    for word in words:
        if kwdict.get(word): kwdict[word] += 1
        else: kwdict[word] = 1
    top20kw = heapq.nlargest(20, kwdict, key=kwdict.get)
    return template("home.tpl", kwdict=kwdict, words=top20kw)

@route('/')
def home():
    return template("home.tpl", kwdict=kwdict, words=top20kw)

@route('/', method="POST")
def handler():
    return process(request.forms.get('string'))

run(host='localhost', port=8080, debug=True)
