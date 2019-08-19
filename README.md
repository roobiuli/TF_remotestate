### Terraform Remote State to AWS S3
---
Terraform module to setup terraform statefile remotely inside an AWS S3 bucket,
It also makes use of DynamoDB table to lock statefile whenever it's used.

#### Prerequisite

* Terraform version 0.11.x or 0.12.x must be installed.

* Make sure you have the AWS provider upp and running


#### Setting up

In order to the use the module one must define some arguments to define the S3 bucket, DynamoDB table and Region
As any other Terraform module this arguments are variables that defaults to specific values if are not set. 

ex: 

```
module "" {
    BucketName = "My-S3-Bucket-For-TFState"
    DynamoDBTableName = "TFState-Lock-table"
    Region = "eu-west-1"
}
```

Initilize the module 

```
terraform init
```

Apply

```
terraform apply
```

###### Defaults for Variables

If BucketName, DynamoDBTableName, Region arguments are not overwritten the defaults are:

BucketName = "terraform-remote-state-storage-s3"
DynamoDBTableName = "terraform-state-lock"
Region = "eu-west-1"