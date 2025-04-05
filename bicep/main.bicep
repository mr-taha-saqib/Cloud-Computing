/* main.bicep */
param location string = 'eastus'
param resourceGroupName string = 'taha'

module vnet './vnet.bicep' = {
  name: 'vnetDeployment'
  params: {
    location: location
  }
}

module vnetPeering './vnet-peering.bicep' = {
  name: 'vnetPeeringDeployment'
  params: {
    vnet1Name: vnet.outputs.vnet1Name
    vnet2Name: vnet.outputs.vnet2Name
  }
}

module storage './storage.bicep' = {
  name: 'storageDeployment'
  params: {
    location: location
  }
}

module vm './vm.bicep' = {
  name: 'vmDeployment'
  params: {
    location: location
  }
}

module monitor './monitor.bicep' = {
  name: 'monitorDeployment'
  params: {
    location: location
  }
}
