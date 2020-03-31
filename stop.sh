# stop the container 

ecs-cli compose --project-name richandersonio-web service down --cluster-config richandersonio-web --ecs-profile richandersonio-web-profile

# show ps (can take a few seconds to drain)

ecs-cli compose --project-name richandersonio-web service ps --cluster-config richandersonio-web --ecs-profile richandersonio-web-profile


