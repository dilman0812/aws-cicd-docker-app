# 1. Base image
FROM python:3.11-slim

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy dependency definition first (for layer caching)
COPY app/requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy application source code
COPY app/src .

# 6. Expose application port
EXPOSE 5000

# 7. Command to run the application
CMD ["python", "app.py"]

