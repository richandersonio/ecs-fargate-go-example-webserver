# Welcome

Launches the richanderson.io web using AWS ECS Fargate

Create a new cluster and start the site:

```bash
./cluster_up.sh
./start.sh
```

Stop the container and tear down the cluster:

```bash
./stop.sh
./cluster_down.sh
```

# Notes

The ecs-params.yml is configured to use an existing VPC + two subnets.  Don't forget to update these if they ever change.

## AWS Help

Don't forget to install the AWS ECS CLI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html

Another useful guide I used:  https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cmd-ecs-cli-up.html


## view the logs 


ecs-cli logs --task-id fbf63be0-4e85-4519-b2d6-ff0d6242c7a9 --follow --cluster-config tutorial --ecs-profile tutorial-profile
