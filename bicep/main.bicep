targetScope = 'subscription'

module storageRg './resource-group.bicep' = {
  name: 'myStorageResourceGroupDeployment'
  params: {
    resourceGroupName: 'rg-bicep'
    location: 'japaneast'
  }
}
