Building this example Application
---------------------------------

::

    docker build -t flask-app-example:latest .

Running the application
-----------------------

::

    docker run -d -p 8000:5000 flask-app-example

Set ``-e FLASK_DEBUG=1`` to enable the Flask debugger (never in production).

Visit the App
-------------

::

    http://localhost:8000
