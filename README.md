# Containerisation and Deployment of Wisecow Application on Kubernetes

To make the wisecow application containerized.I created a Dockerfile
Dockerfile(provided in the repository)

After the creation of Dockerfile.I build the image with the docker build command(docker build -t gurkasathish/wisecow-app:latest .)

After the building the image.I ran the container using the docker run command(docker run -p 4499:4499 -t gurkasathish/wisecow-app:latest )

![alt text](<Screenshot 2024-07-23 124355.png>)

