from bottle import route, run, template

@route('/')
def home():
    return template("home.tpl")

run(host='localhost', port=8080, debug=True)
