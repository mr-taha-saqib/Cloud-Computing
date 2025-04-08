param vnet1Name string
param vnet2Name string

resource vnet1 'Microsoft.Network/virtualNetworks@2021-03-01' existing = {
  name: vnet1Name
}

resource vnet2 'Microsoft.Network/virtualNetworks@2021-03-01' existing = {
  name: vnet2Name
}

resource vnet1Peering 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2021-03-01' = {
  parent: vnet1
  name: '${vnet1Name}-to-${vnet2Name}'
  properties: {
    remoteVirtualNetwork: {
      id: vnet2.id
    }
    allowVirtualNetworkAccess: true
  }
}

resource vnet2Peering 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2021-03-01' = {
  parent: vnet2
  name: '${vnet2Name}-to-${vnet1Name}'
  properties: {
    remoteVirtualNetwork: {
      id: vnet1.id
    }
    allowVirtualNetworkAccess: true
  }
}
