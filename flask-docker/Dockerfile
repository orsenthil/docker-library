FROM python:latest
MAINTAINER Senthil Kumaran <senthil@uthcode.com>
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
