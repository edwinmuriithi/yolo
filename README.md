# Orchestration
This refers to the automated configuration, co-ordination and management of computer systems and services.

## Deployed link
```
http://35.224.243.37:3000/
```

# Steps
1. We'll start deploying by first cloning our repo in the google cloud shell
```
git clone <repository url>
```
2. Change directory to the cloned repo

3. Create a new directory called "manifests"
```
mkdir manifests
```
4. Change directory to the created folder 'manifests'
5. Create the following files as follows
```
touch mongo-config.yaml
touch mongo-secret.yaml
touch mongo.yaml
touch yolo-backend.yaml
touch yolo-client.yaml
```
6. Populate the respective yaml files with the necessary info
7. Log in to your google console and open your cloud shell
8. Run the following command to enable creation of clusters
```
gcloud services enable container.googleapis.com
```
9. Create a new cluster with the following command
```
gcloud container clusters create-auto yolowebapp-gke \
  --region us-central1

```
10. Change directory to the manifest destination and run the following commands
```
kubectl apply -f mongo-config.yaml.yaml
kubectl apply -f mongo-secret.yaml.yaml
kubectl apply -f mongo.yaml.yaml
kubectl apply -f yolo-backend.yaml.yaml
kubectl apply -f yolo-client.yaml.yaml
```
11. Run the following command to check status of the deployments
```
kubectl get all

```
12. Use the following link to access our deployed application
```
http://35.224.243.37:3000/
```

# Requirements
Make sure that you have the following installed:
- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04) 
- npm 
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the mongodb service with `sudo service mongod start`

## Navigate to the Client Folder 
 `cd client`

## Run the folllowing command to install the dependencies 
 `npm install`

## Run the folllowing to start the app
 `npm start`

## Open a new terminal and run the same commands in the backend folder
 `cd ../backend`

 `npm install`

 `npm start`

 ### Go ahead a nd add a product (note that the price field only takes a numeric input)