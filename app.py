from flask import Flask
from flask import render_template
import db
app = Flask(__name__)
app.config["TEMPLATES_AUTO_RELOAD"] = True

def generateHTML(body, **args):
    header = render_template("header.html")
    footer = render_template("footer.html")
    renderArgs = locals()
    renderArgs.update(args)
    return render_template(body, **renderArgs)
    

@app.route('/')
def index():
    return generateHTML("home.html")

@app.route('/login')
def login():
    return generateHTML("login.html")

@app.route('/professors')
@app.route('/professors/<id>')
def professors(id=None):
    if id is None:
        return generateHTML("professors.html", professors= db.getProfessors())
    else:
        return generateHTML("professor.html")

