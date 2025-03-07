# Dockerfile
FROM python:3.10-slim

# Install system dependencies
WORKDIR /app

# Install python dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Command to run the application
CMD [ "python", "app.py" ]