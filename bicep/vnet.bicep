/* vnet.bicep */
param location string

resource vnet1 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name: 'vnet1'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.1.0.0/16']
    }
    subnets: [
      {
        name: 'infra-subnet'
        properties: {
          addressPrefix: '10.1.1.0/24'
        }
      }
      {
        name: 'storage-subnet'
        properties: {
          addressPrefix: '10.1.2.0/24'
        }
      }
    ]
  }
}

resource vnet2 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name: 'vnet2'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.2.0.0/16']
    }
    subnets: [
      {
        name: 'infra-subnet'
        properties: {
          addressPrefix: '10.2.1.0/24'
        }
      }
      {
        name: 'storage-subnet'
        properties: {
          addressPrefix: '10.2.2.0/24'
        }
      }
    ]
  }
}

output vnet1Name string = vnet1.name
output vnet2Name string = vnet2.name
