targetScope = 'managementGroup'

module storageRg './resource-group.bicep' = {
  name: 'myStorageResourceGroupDeployment'
  params: {
    resourceGroupName: 'rg-bicep'
    location: 'westus'
  }
  scope: subscription('a3fe6943-836d-4d42-937d-082bc218a7ea')
}
