resource "aws_s3_bucket" "bucket_demo_ramtf" {
  for_each = {
    dev  = "s3-dev-bucket"
    test = "s3-test-bucket"
    prod = "s3-prod-bucket"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "public-read"


  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"PublicReadGetObject",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject","s3:GetObjectVersion"],
      "Resource":["arn:aws:s3:::${each.key}-${each.value}/*"]
    }
  ]
}
POLICY

  tags = {
    Name = "${each.key}-${each.value}"
    Eachvalue = each.value
    Eachkey = each.key
  }

}

