terraform {
        backend "s3" {
            encrypt = true
            bucket = "${aws_s3_bucket.terraform-state-storage-s3.name}"
            dynamodb_table = "${aws_dynamodb_table.dynamodb-terraform-state-lock.name}"
            region = "${var.ragion}"
            key = "preseved/Terraform/Statefile"
        }
}