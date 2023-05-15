# Containerization 
After running the commands in the README.md,change the directory to the client side and update the react scripts from the client directory
```
npm uninstall react-scripts
npm install react-scripts

```
# Steps
1. Dockerizing the client side
    * Create a Dockerfile 
        ```
        cd client/
        touch Dockerfile
        ```
    * Select the preferred base image
    * Set up the necessary application directory
    * Copy the app package with the necessary dependancy files. In our case its the package.json
    * Set up a layer to install dependencies and also build the application
    * Set up a layer for exposing the port to be used
    * Set up the final layer to start up the application
    * Build the image
        ```
        docker build . -t <dockerhubUsername\imageName:version>

        ```
    * Bulding an image at this stage allows you to push to Dockerhub so on running Docker compose it will be pulled.
    * Push to Docker Hub
        ```
        docker login
        docker push <dockerhubUsername\imageName:version>
        ```
  
  
2. Dockerizing Backend side
    * Create a Dockerfile 
        ```
        cd backend/
        touch Dockerfile
        ```
    * Select the preferred base image
    * Set up the necessary application directory
    * Copy the app package with the necessary dependancy files. In our case its the package.json
    * Set up a layer to install dependencies and also build the application
    * Set up a layer for exposing the port to be used
    * Set up the final layer to start up the application
    * Build the image
        ```
        sudo docker build . -t <dockerhubUsername\imageName:tag>

        ```
    * Bulding an image at this stage allows you to push to Dockerhub so on running Docker compose it will be pulled.
    * Push to Docker Hub
        ```
        sudo docker login
        sudo docker push <dockerhubUsername\imageName:tag>
        ```
  
3. Docker Compose
   We will be running 3 services
    * Database
        1. We will be pulling the MongoDb image from dockerhub
        2. It will contain volumes to allow for data persistance
        3. It will be containg networks to allow for all services to be on the same network
    * Client
        1. This will contain the image we were building earlier for the client side.
        2. It will be containg networks to allow for all services to be on the same network
    * Backend
        1. This will contain the image we were building earlier for the backend side.
        2. It will be containg networks to allow for all services to be on the same network
   > Client sends a request to the backend, backend either posts or fetchs necessary data to/from database depending on the request type.

       sudo docker compose up
         
 ---  