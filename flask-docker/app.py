import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello():
    return "hello"


if __name__ == '__main__':
    debug = os.environ.get("FLASK_DEBUG", "0") == "1"
    app.run(debug=debug, host='0.0.0.0', port=5000)
