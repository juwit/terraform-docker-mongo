# get the mongo docker image
resource "docker_image" "mongo" {
  name = "mongo"
}

# start a container and expose the 27017 port
resource "docker_container" "mongo" {
  name  = "mongo"
  image = "${docker_image.mongo.latest}"
  ports = {
    internal = 27017
    external = 27017
  }
}
