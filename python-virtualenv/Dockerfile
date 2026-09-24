FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-venv \
    && rm -rf /var/lib/apt/lists/*

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /app

# Install dependencies:
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Run the application:
COPY myapp.py .
CMD ["python", "myapp.py"]
