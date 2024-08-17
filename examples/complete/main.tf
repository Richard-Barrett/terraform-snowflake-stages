terraform {
  required_version = ">= 1.5.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.90.0"
    }
  }
}

provider "snowflake" {}

module "snowflake_service_account" {
  source = "../.." # Path to the root of the module

  name     = "my_stage"
  database = "my_database"
  schema   = "my_schema"
}
