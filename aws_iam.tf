resource "aws_iam_user" "gitlab_user" {
  name = "${var.gitlab_username}"
}

resource "aws_iam_access_key" "gitlab_user_credentials" {
  user = "${aws_iam_user.gitlab_user.name}"
}

resource "aws_iam_policy_attachment" "gitlab_policy_attachment" {
  name       = "gitlab_policy_attachment"
  policy_arn = "${aws_iam_policy.gitlab_policy.arn}"
  users      = ["${aws_iam_user.gitlab_user.name}"]
}
