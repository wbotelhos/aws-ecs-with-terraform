#!/bin/bash

ECR_URL=${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com

aws ecr get-login-password --region ${REGION} | docker login --username AWS --password-stdin ${ECR_URL}

docker build . -t ${REPOSITORY}:${TAG}

docker tag ${REPOSITORY}:${TAG} ${ECR_URL}/${REPOSITORY}:${TAG}
docker push ${ECR_URL}/${REPOSITORY}:${TAG}
