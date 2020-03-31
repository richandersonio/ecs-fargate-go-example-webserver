
# starts the container (creating the service+task)

ecs-cli compose --project-name richandersonio-web service up --create-log-groups --cluster-config richandersonio-web --ecs-profile richandersonio-web-profile

# view running containers

ecs-cli compose --project-name richandersonio-web service ps --cluster-config richandersonio-web --ecs-profile richandersonio-web-profile
