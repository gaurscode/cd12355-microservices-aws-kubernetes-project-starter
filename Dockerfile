# Use 
FROM python:alpine3.19


# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents to the container at /app
COPY /analytics/ /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose port 5000
EXPOSE 5000

# Set environment variable(s)
ENV DB_USERNAME=postgres
ENV DB_PASSWORD=********
ENV DB_HOST=coworking-db-postgresql
ENV DB_PORT=5432
ENV DB_NAME=postgres

# Run the application when the container starts
CMD python /app/app.py