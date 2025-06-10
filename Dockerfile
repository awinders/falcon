# # Use an official Python runtime as a parent image
# FROM python:3.11-slim

# COPY ./quote /quote
# WORKDIR /quote

# # Install dependencies
# COPY ./quote/requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# RUN useradd \
# --comment "Application user" \
# --no-create-home \
# --system \
# --user-group \
# unicorn

# COPY --chown=unicorn:unicorn --chmod=0640 app.py /quote/app.py

# WORKDIR /quote

# EXPOSE 8000

# # Start the Falcon app with Gunicorn
# # CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
# # CMD ["python", "app.py"]
# ENTRYPOINT ["gunicorn", "--log-level", "debug", "-b", "0.0.0.0:8000", "app:app"]

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
