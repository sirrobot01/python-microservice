from flask import Flask

app = Flask('app')

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"