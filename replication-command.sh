kubectl apply -f deployment.yaml	Create deployment from YAML
kubectl create deployment <name> --image=<image>	Create deployment imperatively
kubectl scale deployment <name> --replicas=<number>	Scale deployment
kubectl set image deployment/<name> container=<image>	Update container image
kubectl get deployments	List all deployments
kubectl describe deployment <name>	Get deployment details
kubectl rollout undo deployment/<name>	Rollback deployment