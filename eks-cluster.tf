resource "aws_eks_cluster" "demo" {

name = "${var.cluster-name}"
role_arn = "${aws_iam_role.demo-cluster.arn}"

vpc_config {
security_group_ids = ["${from aws}"]
subnet_ids = ["${module.vppc.public_subnets}"]
}
 
depends_on = [
"aws_iam_role_policy_attachment.demo-cluster-AmazonEKSClusterpolicy",
"aws_iam_role_policy_attachment.demo-cluster-AmazonEKSClusterpolicy",
]
}
