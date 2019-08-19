# S3 Bucket that will store the TF state file

resource "aws_s3_bucket" "terraform-state-storage-s3" {
    name = "${var.BucketName}"
    versioning {
        enabled = true
    }
    lifecycle {
        prevent_destroy = true
    }
    tags {
      Name = "S3 Remote Terraform State Store"
    }
}

# DynamoDB table to lock the StateFile 
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
    name = "${var.DynamoDBTableName}"
    hash_key = "LockID"
    read_capacity = 20
    write_capacity = 20

    attribute {
        name = "LockID"
        type = "S"
    }

    tags {
    Name = "DynamoDB Terraform State Lock Table"
    }
} 