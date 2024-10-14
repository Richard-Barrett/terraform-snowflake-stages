terraform {
  required_version = ">= 1.3.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.97.0"
    }
  }
}

resource "snowflake_stage" "this" {
  name         = var.name
  database     = var.database
  schema       = var.schema
  comment      = var.comment
  copy_options = var.copy_options
  credentials  = var.credentials
  directory    = var.directory
  encryption   = var.encryption
  file_format  = var.file_format
}
