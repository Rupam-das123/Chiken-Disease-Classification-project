FROM python:3.8-slim-bullseye

RUN apt update -y && apt install -y awscli

WORKDIR /app

# Copy only requirements first (better caching)
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy full project
COPY . .

# Add src to Python path
ENV PYTHONPATH="/app/src"

CMD ["python3", "app.py"]
