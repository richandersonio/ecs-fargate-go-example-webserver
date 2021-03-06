# Welcome

Scripts to automate ECS fargate and create a cluster/service/task and run a publicly exposed [web server](https://github.com/richandersonio/go-example-webserver) in a container.  

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

Use this command to grab the latest task-id:

```bash
ecs-cli compose --project-name richandersonio-web service ps --cluster-config richandersonio-web --ecs-profile richandersonio-web-profile
```

```bash
ecs-cli logs --task-id {insert-task-id} --follow --cluster-config tutorial --ecs-profile tutorial-profile
```

# Notes

The ecs-params.yml is configured to use an existing VPC + two subnets.  Don't forget to update these if they ever change.

## AWS References / Help

Don't forget to install the AWS ECS CLI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html

Another useful guide I used:  https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cmd-ecs-cli-up.html
