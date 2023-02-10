targetScope = 'resourceGroup'

param resourceGroupName string
param location string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}

module stg './storage.bicep' = {
  name: 'myStorageDeployment'
  params: {
    storageAccountName: 'stcontoso'
    location: location
  }
  scope: rg
}
