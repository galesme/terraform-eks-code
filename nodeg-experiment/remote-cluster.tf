data terraform_remote_state "cluster" {
backend = "s3"
config = {
bucket = "terraform-state-f8ffc212119c-1604689183n"
region = "eu-west-1"
key = "terraform/at-terraform-eks-workshop1-cluster.tfstate"
}
}