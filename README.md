# Containerisation and Deployment of Wisecow Application on Kubernetes

To make the wisecow application containerized.I created a Dockerfile
Dockerfile(provided in the repository)

After the creation of Dockerfile.I build the image with the docker build command(docker build -t gurkasathish/wisecow-app:latest .)

After the building the image.I ran the container using the docker run command(docker run -p 4499:4499 -t gurkasathish/wisecow-app:latest )

![alt text](<Screenshot 2024-07-23 124355.png>)

I cloned the git repository using git clone command(https://github.com/sathishyadav024/wisecow-application.git)

Added the files using git add command(git add .)

Commited the files using git commit command(git commit -m "added the build files" )

Pushed the files to git repository using git push command(git push origin main)

# Deployment:

Deploying the wisecow application in kubernetes

Created the manifests that are needed to deploy the application

Created the deployment.yaml file for deploying the application

Created the service.yaml file for exposing the service over the internet and making it available for end-users

## TLS(Transport Layer Security)

Developed a tls to secure the communication

I do not have the web url so i developed the tls_certifiate and tls_private_key using local machine by installing the openssl.It can not be used in production level but can be used for pre-production.

### AWS EKS setup

I created an aws user with administration privillages 

developed aws-cli access and secret_access_keys to connect to my aws

Created an EKS_CLUSTER

# GITHUB ACTIONS :

Created a github actions workflow (continuous build , push to docker hub and deploy to aws_eks)

After the creation the file is pushed to the gitub 

The CI/CD of wisecow application is successfully completed using GITHUB ACTIONS

![alt text](<Screenshot 2024-07-22 221817.png>)

                         Thank You