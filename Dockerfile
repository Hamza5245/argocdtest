FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 4000
EXPOSE 4050

# Run Flask app on 0.0.0.0:4000
CMD ["python", "app.py"]
