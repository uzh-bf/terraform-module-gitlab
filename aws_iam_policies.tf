resource "aws_iam_policy" "gitlab_policy" {
  name        = "gitlab_s3_access"
  description = "Allow Gitlab to access the buckets it needs to run."

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:HeadBucket"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${var.prefix}gitlab-*"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${var.prefix}gitlab-*/*"
    }
  ]
}
EOF
}
