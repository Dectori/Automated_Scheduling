from flask import Flask
from flask import render_template
import db
app = Flask(__name__)


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
def professors():
    return generateHTML("professors.html", test="Success", professors= db.getProfessors())
