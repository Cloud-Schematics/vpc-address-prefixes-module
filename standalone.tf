##############################################################################
# These blocks are used to initialize the IBM Cloud Terraform Provider when  #
# using this as a standalone module.                                         #
#                                                                            #
# To use this module inside a larger architecture, delete or comment out     # 
# this file.
##############################################################################


##############################################################################
# IBM Cloud Provider
##############################################################################

variable "ibmcloud_api_key" {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources."
  type        = string
  sensitive   = true
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
  ibmcloud_timeout = 60
}

##############################################################################