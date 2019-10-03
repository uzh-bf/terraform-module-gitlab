resource "aws_s3_bucket" "gitlab-registry" {
  bucket = "${var.bucket_prefix}gitlab-registry"
  acl    = "private"
}

resource "aws_s3_bucket" "gitlab-lfs-storage" {
  bucket = "${var.bucket_prefix}gitlab-lfs-storage"
  acl    = "private"
}

resource "aws_s3_bucket" "gitlab-artifacts-storage" {
  bucket = "${var.bucket_prefix}gitlab-artifacts-storage"
  acl    = "private"
}

resource "aws_s3_bucket" "gitlab-uploads-storage" {
  bucket = "${var.bucket_prefix}gitlab-uploads-storage"
  acl    = "private"
}

resource "aws_s3_bucket" "gitlab-packages-storage" {
  bucket = "${var.bucket_prefix}gitlab-packages-storage"
  acl    = "private"
}

resource "aws_s3_bucket" "gitlab-pseudonymizer-storage" {
  bucket = "${var.bucket_prefix}gitlab-pseudonymizer-storage"
  acl    = "private"
}

resource "aws_s3_bucket" "gitlab-backup-storage" {
  bucket = "${var.bucket_prefix}gitlab-backup-storage"
  acl    = "private"

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = 0
    enabled                                = true
    id                                     = "Cleanup"
    tags                                   = {}

    expiration {
      days                         = 30
      expired_object_delete_marker = false
    }
  }
}

resource "aws_s3_bucket" "gitlab-tmp-storage" {
  bucket = "${var.bucket_prefix}gitlab-tmp-storage"
  acl    = "private"
}
