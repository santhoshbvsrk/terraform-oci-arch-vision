## Copyright © 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "region" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "user_ocid" {}

variable "release" {
  description = "Reference Architecture Release (OCI Architecture Center)"
  default     = "1.0"
}

variable "project_description" {
  default = "My Vision AI Project"
}

variable "project_display_name" {
  default = "my-project"
}

variable "model_description" {
  default = "My Vision AI Model"
}

variable "model_display_name" {
  default = "my-model"
}

variable "model_model_type" {
  default = "OBJECT_DETECTION"
}

variable "model_training_dataset_dataset_type" {
  default = "OBJECT_STORAGE"
}

variable "model_training_dataset_bucket" {
}

variable "model_training_dataset_namespace" {
}

variable "model_training_dataset_object" {
}