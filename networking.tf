moved {
  from = aws_vpc.tf_cloud
  to   = module.networking-tf-course.aws_vpc.this
}

moved {
  from = aws_subnet.tf_cloud
  to   = module.networking-tf-course.aws_subnet.this["subnet_1"]
}

module "networking-tf-course" {
  source  = "app.terraform.io/kingeast-94/networking-tf-course/aws"
  version = "0.1.1"
  # insert required variables here


  vpc_config = {
    cidr_block = var.vpc_cidr
    name       = "terraform-cloud"
  }
  subnet_config = {
    subnet_1 = {
      cidr_block = "10.0.0.0/24"
      az         = "us-east-1a"
    }
  }
}
