FROM python:2.7-alpine

# Create and set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entire application
COPY . .

# Set the maintainer and version labels
LABEL maintainer="WebMagic Informatica <info@webmagicinformatica.com>" \
      version="1.0"

# Set the FLASK_APP environment variable
ENV FLASK_APP=app.py

# Expose port 5000 (documentation purpose)
EXPOSE 5000

# Command to start the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
