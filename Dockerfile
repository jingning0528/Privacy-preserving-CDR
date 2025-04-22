FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy all code
COPY . .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install mlflow

# Run training script by default
CMD ["python", "run_recbole_cdr.py"]
