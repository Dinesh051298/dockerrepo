# Docker Application Deployment

## Step 1: Deploy a Sample Web Application Using Docker Containers

### Prerequisites
- Windows OS
- Docker Desktop
- Git
- Code Editor (e.g., Visual Studio Code)

### Process

1. **Install Docker Desktop on Windows**
   - Download and install Docker Desktop from the official website.
   - Ensure Docker is running.

2. **Set Up Your Development Environment**
   - Create a new directory for the project:
     ```bash
     mkdir my-docker-app
     cd my-docker-app
     ```

3. **Create a Simple Web Application**
   - Create a `app.py` file with the following content:
     ```python
     from flask import Flask
     
     app = Flask(__name__)
     
     @app.route('/')
     def hello_world():
         return 'Hello, World!'
     
     if __name__ == '__main__':
         app.run(host='0.0.0.0')
     ```

4. **Create a Dockerfile**
   - Create a `Dockerfile` with the following content:
     ```dockerfile
     FROM python:3.8-slim
     WORKDIR /app
     COPY . /app
     RUN pip install flask
     EXPOSE 5000
     CMD ["python", "app.py"]
     ```

5. **Build the Docker Image**
   - Run the following command to build the image:
     ```bash
     docker build -t my-flask-app .
     ```

6. **Run the Docker Container**
   - Run the container with the following command:
     ```bash
     docker run -d -p 5000:5000 my-flask-app
     ```

7. **Verify the Deployment**
   - Open your web browser and go to `http://localhost:5000`.

## Step 2: Author Information
- **Roll Number**: G23AI2002
- **Name**: Dinesh Periyasamy

