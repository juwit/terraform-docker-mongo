# output the container name as an example

output "docker_container_name" {
  description = "name of the docker container"
  value       = docker_container.mongo.name
}
