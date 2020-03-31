# Welcome

This is for my personal use, but might be useful if you want to also automate ECS fargate to create a cluster and run a container with public access + remove both.

Launches the richanderson.io website using AWS ECS Fargate.  

Create a new cluster and start the site in a container:

```bash
./cluster_up.sh
./start.sh
```

Stop the container and tear down the cluster:

```bash
./stop.sh
./cluster_down.sh
```

## View the logs from a running container

```bash
ecs-cli logs --task-id fbf63be0-4e85-4519-b2d6-ff0d6242c7a9 --follow --cluster-config tutorial --ecs-profile tutorial-profile
```

Use this command to grab the latest task-id:

```bash
ecs-cli compose --project-name richandersonio-web service ps --cluster-config richandersonio-web --ecs-profile richandersonio-web-profile
```
# Notes

The ecs-params.yml is configured to use an existing VPC + two subnets.  Don't forget to update these if they ever change.

## AWS References / Help

Don't forget to install the AWS ECS CLI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html

Another useful guide I used:  https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cmd-ecs-cli-up.html
