# With Variable

```bash
export AZDO_ORG_SERVICE_URL="https://dev.azure.com/*******" # *** = organisation name
export ARM_CLIENT_ID=""
export ARM_TENANT_ID=""
export ARM_CLIENT_SECRET=""

export TF_VAR_project_id="" # valid GUID

terraform -chdir=examples/with_variable init
terraform -chdir=examples/with_variable apply --auto-approve
```
