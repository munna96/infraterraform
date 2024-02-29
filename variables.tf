variable "aws_region" {
       description = "The AWS region to create things in." 
       default     = "ap-south-1" 
}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "jenkin_msuh"  #key name should be changed with your key pair name which is laready existed in your system
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t2.micro" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "jenkins-sgroup-feb-2024_msuh" #have to change
}

variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "mush-ec2-instance" #your instance name
} 
variable "ami_id" { 
    description = "AMI for Amazon Linux Ec2 instance" 
    default     = "ami-0e670eb768a5fc3d4" #AMI for Amazon Linux Ec2 instance
}
variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}
variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}
variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
    default     = "my-s3bucket-" #you have to change the bucket name 
}
variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}
