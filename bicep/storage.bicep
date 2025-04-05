/* storage.bicep */
param location string

resource storage 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: 'tahastorage'
  location: location
  sku: {
    name: 'Standard_ZRS'
  }
}
