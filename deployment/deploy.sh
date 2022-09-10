kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

kubectl apply -f api-feed-deployment.yaml
kubectl apply -f api-feed-service.yaml

kubectl apply -f api-user-deployment.yaml
kubectl apply -f api-user-service.yaml

kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml


kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy



kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml
kubectl expose deployment udagram-frontend --type=LoadBalancer --name=publicfrontend



kubectl exec --stdin --tty backend-feed-68d5c9fdd6-dkg8c -- /bin/bash