output "gitlab_access_key" {
  value = "${aws_iam_access_key.gitlab_user_credentials.id}"
}

output "gitlab_secret_key" {
  value = "${aws_iam_access_key.gitlab_user_credentials.secret}"
}
