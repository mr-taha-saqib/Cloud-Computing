param location string

resource storage1 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: 'tahastorage1'
  location: location
  sku: {
    name: 'Standard_ZRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource storage2 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: 'tahastorage2'
  location: location
  sku: {
    name: 'Standard_ZRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

output storage1Id string = storage1.id
output storage2Id string = storage2.id
