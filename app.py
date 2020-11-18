from flask import Flask
from flask import render_template, send_from_directory
from scheduler import getSchedule
import db
app = Flask(__name__)
app.config["TEMPLATES_AUTO_RELOAD"] = True
db.delSchedule()
db.genSchedule(getSchedule())
def generateHTML(body, **args):
    header = render_template("header.html")
    footer = render_template("footer.html")
    renderArgs = locals()
    renderArgs.update(args)
    return render_template(body, **renderArgs)
    

@app.route('/')
def index():
    return generateHTML("home.html")

@app.route('/professors')
@app.route('/professors/<id>')
def professors(id=None):
    if id is None:
        return generateHTML("professors.html", professors= db.getProfessors())
    else:
        return generateHTML("professor.html", professor= db.getProfessor(id), schedule= db.getSchedule(id))

@app.route('/static/<path:path>')
def staticFiles(path):
    return send_from_directory("static",path)