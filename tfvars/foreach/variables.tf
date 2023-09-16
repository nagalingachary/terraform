variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instances" {
    type = map
    default = {
        MongoDB = "t3.medium"
        MySQL = "t3.medium"
        Catalogue = "t2.micro"
        Cart = "t2.micro"
        Redis = "t2.micro"
        RabbitMQ = "t2.micro"
        User = "t2.micro"
        Shipping = "t2.micro"
        Payment = "t2.micro"
        Web = "t2.micro"
    }
}

variable "zone_id" {
    default = "Z01448573NWB13RKSRK57"
}

variable "domain" {
    default = "devopscollab.tech"
}

variable "ingress" {
    type = list
    default = [
    {
    description      = "Allow HTTPS port 443 from public"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   },

   {
    description      = "Allow HTTP port 80 from public"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   },

   {
    description      = "Allow SSH port 22 from public"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   }

    ]
}
