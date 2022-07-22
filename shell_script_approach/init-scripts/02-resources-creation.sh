#!bin/bash

echo "-------------------------------------Script-02"

echo "########### Creating SQS ###########"
aws sqs create-queue --endpoint-url=http://localhost:4566 --queue-name=local_queue_my --profile=localstack
aws sqs create-queue --endpoint-url=http://localhost:4566 --queue-name=local_queue_my_1 --profile=localstack

echo "########### Listing SQS ###########"
aws sqs list-queues --endpoint-url=http://localhost:4566 --profile=localstack


echo "########### Creating S3 ###########"

aws s3api create-bucket  --endpoint-url=http://localhost:4566 --bucket my-bucket1 --profile=localstack
aws s3api create-bucket  --endpoint-url=http://localhost:4566 --bucket my-bucket2 --profile=localstack


echo "########### Listing S3 ###########"
aws s3api list-buckets --endpoint-url=http://localhost:4566 --profile=localstack