# Task 1 - K8s questions

Launch the Cluster
To start we need to launch a Kubernetes cluster.
Execute the command below to start the cluster components.

```minikube start --wait=false```

Wait for the Node to become Ready by checking kubectl get nodes


1. Launch a deployment called http which will start a container based on the Docker Image katacoda/docker-http-server:latest with one replica set.

```kubectl run http --image=docker.io/nginx:latest```

2. Check the status of the deployment.

``` kubectl get deployment http -w ```

3. With the deployment created, check with curl if the http server is working. "tip - expose the service if needed"

``` kubectl expose deployment http --external-ip="172.17.0.65" --port=8000 --target-port=80 ```

4. Try to change the content of the nginx page.

``` kubectl exec -it pod bash ; vim /usr/share/html/index.html ; exit```

5. Scale the deployment to 3 and confirm.
```kubectl scale --replicas=3 deployment http```

+ advanced & Questions
- How would you change the content of the nginx page once the replica is 3+?
- What is the difference between Deployment and a Daemonset?
- How you would create a standalone pod?
- How to clean up all the setup above
- How to get logs from the pods
