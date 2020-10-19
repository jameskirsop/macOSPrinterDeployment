from bottle import route, run, template, post, get, request
import re

@post('/')
def index_submission():
    print(request.forms.keys())

    with open('../scripts/installation','r') as f:
        installationScript = f.read()
    with open('../scripts/conditions','r') as f:
        conditionsScript = f.read()
    with open('../scripts/remove','r') as f:
        removeScript = f.read()

    for key in request.forms:
        print(key)
        print(request.forms.get(key))
        installationScript = re.sub(rf'(?<={key}\=")[^"]*',request.forms.get(key),installationScript)
        conditionsScript = re.sub(rf'(?<={key}\=")[^"]*',request.forms.get(key),conditionsScript)
        removeScript = re.sub(rf'(?<={key}\=")[^"]*',request.forms.get(key),removeScript)

    print(installationScript)
    return template('scripts',{
        'error':None,
        'installationScript':installationScript,
        'conditionsScript':conditionsScript,
        'removeScript':removeScript,
        })

@get('/')
def index():
    return template('index',{'error':None})


run(host='localhost',port=8085,debug=True,reloader=True)