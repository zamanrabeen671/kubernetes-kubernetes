kubectl apply -f nginx-pod.yaml #push the yaml file 
kubectl get pods # check pod status

kubectl exec -it nginx-web -- /bin/bash #Open a shell inside the pod
# List files
kubectl exec nginx-web -- ls /etc/nginx

# Check nginx process
kubectl exec nginx-web -- ps aux

# View nginx config
kubectl exec nginx-web -- cat /etc/nginx/nginx.conf

kubectl logs nginx-web # check web logs

#Check which containers are running:
kubectl get pod my-app -o jsonpath='{.spec.containers[*].name}'


# Open shell in nginx container
kubectl exec -it my-app -c nginx -- /bin/bash

# Check nginx process
kubectl exec my-app -c nginx -- ps aux

# Check nginx files
kubectl exec my-app -c nginx -- ls /etc/nginx


# Open shell in busybox container
kubectl exec -it my-app -c busybox -- /bin/sh

# Check what's running
kubectl exec my-app -c busybox -- ps

# Check the system
kubectl exec my-app -c busybox -- uname -a


# Open shell in busybox container
kubectl exec -it my-app -c busybox -- /bin/sh

# Check what's running
kubectl exec my-app -c busybox -- ps

# Check the system
kubectl exec my-app -c busybox -- uname -a

#service cleanup
kubectl delete pod nginx-web
kubectl delete pod my-app

