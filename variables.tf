variable "mongo_container_name" {
    type = "string"
    description = "name of the container"
}

variable "mongo_exposed_port" {
    type        = "string"
    description = "exposed port of the mongo container"
    default     = "27017"
}
