# kill the cluster

ecs-cli down --force --cluster-config richandersonio-web --ecs-profile richandersonio-web-profile

# clear up the iam role

aws iam --region us-east-1 detach-role-policy --role-name ecsTaskExecutionRole --policy-arn arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy
aws iam --region us-east-1 delete-role --role-name ecsTaskExecutionRole


