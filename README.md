
# donut

https://donut.djnavarro.net


## R

- `server.R`: script with generative art code and a minimal plumber API

## docker

- `Dockerfile`: specifies the docker image 
- `.github/workflows/build-image.yaml`: workflow to push image to registry

## kubernetes

- `deployment.yaml`: manifest file for the kubernetes deployment
- `managed-cert.yaml`: manifest file for the TLS certificate
- `mc-service.yaml`: manifest file for the NodePort service
- `mc-ingress.yaml`: manifest file for the ingress

