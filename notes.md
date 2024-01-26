# Terraform Learning Notes
---

### Infrastructure as Code
- https://developer.hashicorp.com/terraform/tutorials/azure-get-started/infrastructure-as-code

#### Terraform Deployment Workflow

- Scope
  - Identify the infrastructure for your project.
- Author
  - Write the configuration for your infrastructure.
- Initialize 
  - Install the plugins Terraform needs to manage the infrastructure.
- Plan 
  - Preview the changes Terraform will make to match your configuration.
- Apply 
  - Make the planned changes.

#### Terraform State File

- The state file is extremely important to Terraform. It maps real world resources to your configuration, and holds important metadata about each resource. 
- This file must be saved and distributed to anyone who might run Terraform. This is why it is recommended to use a remote backend for storing state, such as Azure Storage, so that everyone on your team can access the same state.


