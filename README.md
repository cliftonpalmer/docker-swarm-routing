# docker-swarm-routing
Routing nginx service for docker swarm

# notes when adding to conf.d
After adding a new .conf file, replicas must be scaled to 0 then to 1 for change to take effect

# deploying
```
docker stack deploy -c <(docker-compose config) proxy
```
