# create the role + grant permissions

aws iam --region us-east-1 create-role --role-name ecsTaskExecutionRole --assume-role-policy-document file://task-role.json

aws iam --region us-east-1 attach-role-policy --role-name ecsTaskExecutionRole --policy-arn arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy

# config and create the cluster

ecs-cli configure --cluster richandersonio --default-launch-type FARGATE --config-name richandersonio-web --region us-east-1

ecs-cli configure profile --access-key $AWS_ACCESSKEY --secret-key $AWS_SECRET_KEY --profile-name richandersonio-web-profile

ecs-cli up --cluster-config richandersonio-web --ecs-profile richandersonio-web-profile --vpc vpc-6b221c11 --subnets subnet-c277989d, subnet-36ca2850
