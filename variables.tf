
variable "BucketName" {
    type = "string"
    default = "terraform-remote-state-storage-s3"
}

variable "DynamoDBTableName" {
    type = "string"
    default = "terraform-state-lock"
}

variable "region" {
    type = "string"
    default = "eu-west-1"
}