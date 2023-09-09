data "aws_eks_cluster" "dev-cluster" {
  name = module.my-cluster.cluster_id
}

data "aws_eks_cluster_auth" "dev-cluster" {
  name = module.my-cluster.cluster_id
}

#new https://github.com/hashicorp/terraform-provider-helm/issues/400
# data "aws_eks_cluster_auth" "cluster-auth" {
#   depends_on = [aws_eks_cluster.my_cluster]
#   name       = aws_eks_cluster.my_cluster.name
# }
