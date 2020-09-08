resource "aws_ecr_repository" "docker-aviator" {
  name = "docker-aviator"
  tags = merge(
    local.common_tags,
    { DockerHub : "dwpdigital/docker-aviator" }
  )
}

resource "aws_ecr_repository_policy" "docker-aviator" {
  repository = aws_ecr_repository.docker-aviator.name
  policy     = data.terraform_remote_state.management.outputs.ecr_iam_policy_document
}

output "ecr_example_url" {
  value = aws_ecr_repository.docker-aviator.repository_url
}
