# use local docker as provider

provider "docker" {
  host = "unix:///var/run/docker.sock"
}
