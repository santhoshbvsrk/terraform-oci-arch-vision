## Copyright © 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

resource "oci_ai_vision_project" "vision_project" {
    #Required
    compartment_id = var.compartment_ocid

    #Optional
    defined_tags = {"${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    description = var.project_description
    display_name = var.project_display_name
    freeform_tags = {"bar-key"= "value"}
}

resource "oci_ai_vision_model" "vision_model" {
    #Required
    compartment_id = var.compartment_ocid
    model_type = var.model_model_type
    project_id = oci_ai_vision_project.vision_project.id
    training_dataset {
        #Required
        dataset_type = var.model_training_dataset_dataset_type

        #Optional
        bucket = var.model_training_dataset_bucket
        dataset_id = oci_data_labeling_service_dataset.test_dataset.id
        namespace = var.model_training_dataset_namespace
        object = var.model_training_dataset_object
    }

    #Optional
    defined_tags = {"${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    description = var.model_description
    display_name = var.model_display_name
    freeform_tags = {"bar-key"= "value"}
    is_quick_mode = var.model_is_quick_mode
    max_training_duration_in_hours = var.model_max_training_duration_in_hours
    model_version = var.model_model_version
    testing_dataset {
        #Required
        dataset_type = var.model_testing_dataset_dataset_type

        #Optional
        bucket = var.model_testing_dataset_bucket
        dataset_id = oci_data_labeling_service_dataset.test_dataset.id
        namespace = var.model_testing_dataset_namespace
        object = var.model_testing_dataset_object
    }
    validation_dataset {
        #Required
        dataset_type = var.model_validation_dataset_dataset_type

        #Optional
        bucket = var.model_validation_dataset_bucket
        dataset_id = oci_data_labeling_service_dataset.test_dataset.id
        namespace = var.model_validation_dataset_namespace
        object = var.model_validation_dataset_object
    }
}

