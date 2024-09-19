FROM python:3.9-slim

WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the test scripts
COPY tests/ ./tests/

# Command to run the tests
CMD ["pytest", "*/test_google.py"]

