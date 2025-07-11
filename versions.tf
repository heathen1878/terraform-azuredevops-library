terraform {
<<<<<<< Updated upstream
  required_version = "~> 1.4.0"
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "=0.6.0"
=======
  required_version = "~> 1.0"
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">= 0.6.0, <= 1.10.0"
>>>>>>> Stashed changes
    }
  }
}