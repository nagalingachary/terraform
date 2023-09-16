variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_names" {
    type = list
    default = ["MongoDB", "Cart", "Catalogue", "User", "Redis", "MySQL", "Shipping", "RabbitMQ", "Payment", "Web"]
}

variable "zone_id" {
    default = "Z01448573NWB13RKSRK57"
}

variable "domain" {
    default = "devopscollab.tech"
}