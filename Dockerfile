# Step 1: Use an official Python image as a base
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container
COPY . /app

# Step 4: Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 5000 to allow access to the Flask app
EXPOSE 5000

# Step 6: Set the environment variable to define the Flask app
ENV FLASK_APP=app.py

# Step 7: Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
