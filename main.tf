resource "aws_s3_bucket" "bad_bucket" {
  bucket = "opsis-public-test-bucket-12345"
  acl    = "public-read"
}

resource "aws_security_group" "bad_sg" {
  name        = "allow_all_ingress"
  description = "Allow all incoming traffic"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
