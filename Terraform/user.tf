
#This will create new user in aws. 
resource "aws_iam_user" "demo" {
  name = "awsuser1"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "demo" {
  user = aws_iam_user.demo.name
}

data "aws_iam_policy_document" "demo_ro" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "demo_ro" {
  name   = "test"
  user   = aws_iam_user.demo.name
  policy = data.aws_iam_policy_document.demo_ro.json
}