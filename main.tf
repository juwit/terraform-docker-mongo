# get the mongo docker image
resource "docker_image" "mongo" {
  name = "mongo"
}

# start a container and expose the 27017 port
resource "docker_container" "mongo" {
  name         = "${var.mongo_container_name}"
  image        = "${docker_image.mongo.latest}"
  keep_locally = true
  ports = {
    internal = 27017
    external = "${var.mongo_exposed_port}"
  }
}
