## Python virtualenv in Docker

Activating a virtualenv inside a Dockerfile by setting `VIRTUAL_ENV` and `PATH`,
based on Itamar Turner-Trauring's post:
https://pythonspeed.com/articles/activate-virtualenv-dockerfile/

### Run

    docker build -t python-virtualenv .
    docker run --rm python-virtualenv

The app prints `sys.prefix`, which should be `/opt/venv`.
