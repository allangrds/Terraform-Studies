variable "region" {
    type    = "string"
    default = "us-east-1"
}

variable "inbound_source" {
    type    = "list"
    default = ["0.0.0.0/0"]
}

variable "outbound_source" {
    type    = "list"
    default = ["0.0.0.0/0"]
}