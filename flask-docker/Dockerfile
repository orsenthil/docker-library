FROM python:3.14-slim
LABEL org.opencontainers.image.authors="Senthil Kumaran <senthil@uthcode.com>"

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .

EXPOSE 5000
CMD ["python", "app.py"]
