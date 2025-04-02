variable "stage" {
  type        = string
  description = "環境"
}

variable "queue_name_suffix" {
  type        = string
  description = "キュー名のサフィックス"
}


variable "queue_visibility_timeout_seconds" {
  type        = number
  description = "キューの可視性タイムアウト"
  default     = 30
}
