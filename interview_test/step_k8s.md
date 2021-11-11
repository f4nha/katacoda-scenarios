# Scenario 1 - K8s

Launch the Cluster
To start we need to launch a Kubernetes cluster.
Execute the command below to start the cluster components.

```minikube start --wait=false```

Wait for the Node to become Ready by checking kubectl get nodes


1. Create a new namespace and Launch a deployment called `http` which will start a container based on the Docker Image `docker.io/nginx:latest` with one replica.


2. Check the status of the deployment.


3. With the deployment created, check with curl if the http server is working. "tip - expose the service if needed"


4. Try to change the content of the nginx page.


5. Scale the deployment to 3 and confirm.


6. get some logs from the pods, that shows the curl attempts

<br>

Advanced & Questions
- How would you change the content of the nginx page once the replica is 3+?
- What is the difference between Deployment and a Daemonset?
- How you would create a standalone pod?
- How to clean up all the setup above