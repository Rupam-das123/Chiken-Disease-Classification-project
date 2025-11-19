# FROM python:3.8-slim-buster

# RUN apt update -y && apt install awscli -y
# WORKDIR /app

# COPY . /app
# RUN pip install -r requirements.txt

# CMD ["python3", "app.py"]


# FROM python:3.8-slim

# WORKDIR /app

# COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# CMD ["python3", "app.py"]

FROM python:3.8-slim-bullseye

RUN apt update -y && apt install -y awscli

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "app.py"]


