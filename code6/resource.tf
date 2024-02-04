resource "aws_iam_user" "test" {
  name = "ansible"
}
resource "aws_iam_group" "ansible" {
  name = "ansiblegroup"
}