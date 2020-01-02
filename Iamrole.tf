resource "aws_iam_role" "demo-cluster" {

name = "terraform-eks-demo-cluster"

assume_role_policy= <<POLICY
{
"Version": "2012-10-17"
"Statement": [
{
"Effect": "Allow",

"Principal": {
"Service": "eks.amazonaws.com"
},

"Action": "sts:AssumeRole",
    }
  ]
}

POLICY
}