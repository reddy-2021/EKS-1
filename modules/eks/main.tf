variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.0.0"

  name    = "dev-eks-1"
  kubernetes_version = "1.33"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids
  create_cloudwatch_log_group = false
  
  create_iam_role = false
  attach_encryption_policy = flase
  iam_role_arn    = "arn:aws:iam::851725505989:user/kk_labs_user_712788"

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 3
      min_size     = 1

      instance_types = ["t3.medium"]
    }
  }
}
