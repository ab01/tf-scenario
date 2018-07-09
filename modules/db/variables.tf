########################
## Variables
########################

variable "region" {
  description = "AWS region to deploy this instance"
  default     = "us-east-1"
}

variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret key."
}

variable "environment_name" {
  description = "The name of the environment"
}

variable "vpc_name" {
  description = "The name of the VPC that the RDS cluster will be created in"
}

variable "app_name" {
  description = "Name of the application"
  default     = ""
}



variable "availability_zones" {
  description = "A list of EC2 Availability Zones that instances in the DB cluster can be created in"
  default     = ["us-east-1a", "us-east-1f"]
}

variable "admin_user" {
  description = "User Name for the admin user"
  default     = "admin"
}

variable "admin_password" {
  description = "Provide the password of the RDS Admin User"
}

variable "retention_period" {
  description = "No of days to retain the backup for"
  default     = "7"
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled. Example: '09:46-10:16'. Must not overlap with maintenance_window"
  default     = "02:00-03:00"
}

variable "maintenance_window" {
  description = "The weekly time range during which system maintenance can occur, in (UTC) e.g. wed:04:00-wed:04:30"
  default     = "wed:04:00-wed:05:00"
}

variable "kms_key_id" {
  description = " The globally unique identifier for the key"
  default     = ""
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB cluster is deleted.  If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created"
  default     = "False"
}

variable "apply_immediately" {
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window."
  default     = "False"
}

variable "vpc_rds_security_group_id" {
  description = "The name of the environment"
}

variable "port" {
  description = "The port on which the DB accepts connections"
  default     = "3306"
}

variable "db_cluster_parameter_group_name" {
  description = "Parameter group associated with this instance's DB Cluster"
}

variable "engine" {
  description = "Which Engine is used for RDS Cluster, Choose from []"
  default     = "aurora-mysql"
}

variable "engine_version" {
  description = "Which version of DB Engine to be used?"
  default     = "5.7.12"
}
