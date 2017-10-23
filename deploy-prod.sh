#!/usr/bin/env bash
export KUBE_NAMESPACE=${KUBE_NAMESPACE}
export ENVIRONMENT=${ENVIRONMENT}
export APP=pttg-fs-calc-ui
export KUBE_SERVER=${KUBE_SERVER_PROD}
export KUBE_TOKEN=${KUBE_TOKEN_PROD}

cd kd
kd --debug \
   --insecure-skip-tls-verify --timeout 5m0s \
   --file pttg-fs-calc-ui-deployment.yaml \
   --file pttg-fs-calc-ui-ingress.yaml \
   --file pttg-fs-calc-ui-svc.yaml