variable "name" {
  description = "Specifies the identifier for the stage; must be unique for the database and schema in which the stage is created."
  type        = string
}

variable "database" {
  description = "The database in which to create the stage."
  type        = string
}

variable "schema" {
  description = "The schema in which to create the stage."
  type        = string
}

variable "comment" {
  description = "Specifies a comment for the stage."
  type        = string
  default     = null
}

variable "copy_options" {
  description = "Specifies the copy options for the stage."
  type        = string
  default     = null
}

variable "credentials" {
  description = "Specifies the credentials for the stage."
  type        = string
  default     = null
  sensitive   = true
}

variable "directory" {
  description = "Specifies the directory settings for the stage."
  type        = string
  default     = null
}

variable "encryption" {
  description = "Specifies the encryption settings for the stage."
  type        = string
  default     = null
}

variable "file_format" {
  description = "Specifies the file format for the stage."
  type        = string
  default     = null
}
