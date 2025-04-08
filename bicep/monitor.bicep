param location string
param storageAccountId string

resource monitor 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'monitorSettings'
  properties: {
    storageAccountId: storageAccountId
    metrics: [
      {
        category: 'Percentage CPU'
        enabled: true
      }
    ]
  }
}
