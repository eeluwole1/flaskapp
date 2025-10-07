from flask import flask

app = flask (__name__)

@app.route('/')
def hello():
    return "Hello from docker"


if __name__ == "__main__":
    app.run (host = "0000", port = 5000, debug = True)
