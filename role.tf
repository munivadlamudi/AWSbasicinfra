
# data "aws_iam_policy_document" "instance_assume_role_policy" {
#     statement {

#         actions = ["sts: Assume Role"]
#         principals {
#             type = "Service"
#             identifiers = ["ec2.amazonaws.com"]
#         }
#     }
# }    
# resource "aws_iam_role" "controlhost" {
#     name = var.environment == "npz" ? "ControlHost" : "${local.name}-controlhost"
#     description = "Allows NAP controlhost to assume administrator access." 
#     assume_role_policy = data.aws_iam_policy_document. instance_assume_role_policy.json managed_policy_arns = [
# "arn: aws:iam: : aws: policy/AdministratorAccess"
# ]
# }
# resource "aws_iam_instance_profile" "controlhost" { name = "${local.name}-controlhost"
# }
# role
# aws_iam_role.controlhost.name
# resource "aws_security_group" "controlhost" {
# name
# = "${local.name}-controlhost"
# description = "Security group for NAP Controlhost" vpc_id =aws_vpc.main.id
# tags merge(local.mandatory_tags, var.tags, { Name = "${local.name}-controlhost"
# })