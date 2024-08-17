<img align="right" width="60" height="60" src="images/terraform.png">

# terraform-snowflake-stages
Terraform Module for Managing Snowflake Stages

This Terraform module is designed to create a Snowflake Stage. A stage in Snowflake is a temporary storage area where data files are loaded before being processed into operational tables. The module allows you to customize various aspects of the stage.

Here's a brief overview of the variables in the module:

- `name`: The unique identifier for the stage within the database and schema.
- `database`: The name of the database in which the stage will be created.
- `schema`: The name of the schema in which the stage will be created.
- `comment`: An optional comment for the stage.
- `copy_options`: Optional copy options for the stage.
- `credentials`: Sensitive credentials for the stage.
- `directory`: Optional directory settings for the stage.
- `encryption`: Optional encryption settings for the stage.
- `file_format`: Optional file format for the stage.

The module creates a snowflake_stage resource with these variables. The resource represents the stage in Snowflake.

To use the module, you call it from your main Terraform configuration, providing values for the variables. The module then creates the stage in Snowflake according to your specifications.

Example CICD with `BitBucket` and `Codefresh`:

![Image](./images/diagram.png)

# Usage

The bare minimum you need to reference to use the module are the required variables. In this case, they are name, database, and schema. Here's how you can use the module with just these variables:

```hcl
module "snowflake_stage" {
  source = "git::https://github.com/Richard-Barrett/terraform-snowflake-stages.git?ref=0.0.1"

  name     = "my_stage"
  database = "my_database"
  schema   = "my_schema"
}
```

To use this Terraform module, you need to call it from your main Terraform configuration file. Here's an example of how you can do this:

```hcl
module "snowflake_stage" {
  source = "git::https://github.com/Richard-Barrett/terraform-snowflake-stages.git?ref=0.0.1"

  name         = "my_stage"
  database     = "my_database"
  schema       = "my_schema"
  comment      = "This is my stage"
  copy_options = "COPY_OPTION"
  credentials  = "SENSITIVE_CREDENTIALS"
  directory    = "DIRECTORY_SETTING"
  encryption   = "ENCRYPTION_SETTING"
  file_format  = "FILE_FORMAT"
}
```

In this example, replace the values of name, database, schema, comment, copy_options, credentials, directory, encryption, and file_format with your actual values. Also, replace ./modules/snowflake_stage with the actual path to your module.

After setting up the module call, you can initialize your Terraform configuration with the command terraform init, and then apply it with the command terraform apply.

# Overview

This Terraform module creates a Snowflake Stage with customizable properties like name, database, schema, comment, copy options, credentials, directory, encryption, and file format. You call it from your main Terraform configuration, providing values for these variables.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.6 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | ~> 0.90.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | 0.90.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_stage.this](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/stage) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | Specifies a comment for the stage. | `string` | `null` | no |
| <a name="input_copy_options"></a> [copy\_options](#input\_copy\_options) | Specifies the copy options for the stage. | `string` | `null` | no |
| <a name="input_credentials"></a> [credentials](#input\_credentials) | Specifies the credentials for the stage. | `string` | `null` | no |
| <a name="input_database"></a> [database](#input\_database) | The database in which to create the stage. | `string` | n/a | yes |
| <a name="input_directory"></a> [directory](#input\_directory) | Specifies the directory settings for the stage. | `string` | `null` | no |
| <a name="input_encryption"></a> [encryption](#input\_encryption) | Specifies the encryption settings for the stage. | `string` | `null` | no |
| <a name="input_file_format"></a> [file\_format](#input\_file\_format) | Specifies the file format for the stage. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the identifier for the stage; must be unique for the database and schema in which the stage is created. | `string` | n/a | yes |
| <a name="input_schema"></a> [schema](#input\_schema) | The schema in which to create the stage. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
