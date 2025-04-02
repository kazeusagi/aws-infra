resource "aws_sqs_queue" "this" {
  name                       = "${var.stage}-${var.queue_name_suffix}"
  visibility_timeout_seconds = var.queue_visibility_timeout_seconds
  max_message_size           = 2048
}
