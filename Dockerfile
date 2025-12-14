# Dockerfile (Option A — recommended)
FROM python:3.10

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Copy project in
COPY . .

# Install project dependencies and Django
RUN pip install --no-cache-dir "django==3.2.*"

# Run migrations
RUN python manage.py migrate

# Start server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]


