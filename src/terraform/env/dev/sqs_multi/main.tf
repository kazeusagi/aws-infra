module "sqs_module_test" {
  source                           = "../../../modules/sqs_multi_region"
  stage                            = "dev"
  queue_name_suffix                = "queue-multi-regions-test"
  queue_visibility_timeout_seconds = 60
  providers = {
    aws.another_region = aws.us_east_1
  }
}
