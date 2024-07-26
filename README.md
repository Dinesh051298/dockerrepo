# Docker Application Deployment

## Author Information
- **Roll Number**: G23AI2002
- **Name**: Dinesh Periyasamy
![image](https://github.com/user-attachments/assets/3ffbdb32-682a-4a72-9b92-67b2959c8a11)

## Introduction
This project demonstrates the deployment of a portfolio web application using custom Docker images created from scratch. The application uses HTML, CSS, Bootstrap for the frontend, and JavaScript for scripting. Docker images are built from scratch, ensuring a tailored and lightweight environment.

## Application Functionality
Frontend: The portfolio website showcases various projects and skills. It includes:

HTML: Provides the structure and content of the pages.
CSS: Styles the content and layouts, enhancing the visual appearance.
Bootstrap: Utilized for responsive design and UI components.
JavaScript: Adds interactive elements and dynamic behavior to the site.



## Step 1: Deploy My Portfoloio Web Application Using Docker Containers

### Prerequisites
- Windows OS
- Docker Desktop
- Git
- Code Editor (Visual Studio Code)

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

3. **Created my Portfolio Web Application**
    
4. **Create a Dockerfile**
   - Create a `Dockerfile` with the following content:
     ```dockerfile
FROM scratch

# Add Ubuntu root filesystem
ADD rootfs.tar.gz /

# Install nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/


COPY public_html /var/www/html

# Expose the port that your application runs on (e.g., 80 for a web server)
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
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


## References
Docker Documentation - https://docs.docker.com/
