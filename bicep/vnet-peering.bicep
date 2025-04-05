/* vnet-peering.bicep */
param vnet1Name string
param vnet2Name string

resource vnet1Peering 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2021-03-01' = {
  name: '${vnet1Name}-to-${vnet2Name}'
  properties: {
    remoteVirtualNetwork: {
      id: resourceId('Microsoft.Network/virtualNetworks', vnet2Name)
    }
    allowVirtualNetworkAccess: true
  }
}

resource vnet2Peering 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2021-03-01' = {
  name: '${vnet2Name}-to-${vnet1Name}'
  properties: {
    remoteVirtualNetwork: {
      id: resourceId('Microsoft.Network/virtualNetworks', vnet1Name)
    }
    allowVirtualNetworkAccess: true
  }
}
