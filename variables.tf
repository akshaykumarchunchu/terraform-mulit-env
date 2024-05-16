variable "instance_name" {
        type = map
        # default = {
        #   db-dev = "t3.small"
        #   backend-dev = "t3.micro"
        #   frontend-dev = "t3.micro"
        # }
}

variable "environment" {

}
variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Terraform = "true"
    }
}

#route 53 variables
variable "zone_id" {
    default = "Z0025399DYYBF169J04X"
}

variable "domain_name" {
    default = "akshaydaws-78s.online"
}