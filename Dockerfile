# Use an official Python runtime as a parent image
FROM python:3.11-slim

EXPOSE 8080

# Install gunicorn & falcon
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Add demo app
COPY ./app /app
WORKDIR /app

CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]
