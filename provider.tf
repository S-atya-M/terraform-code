# provider.tf
provider "aws" {
  region = "us-west-2"  # Specify your region
}

# variables.tf
variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair"
  default     = "my-key"
}

variable "db_name" {
  default = "mydb"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  description = "Database password"
  default     = "fefrerfewuer7667" 
}

variable "db_instance_class" {
  default = "db.t2.micro"
}
