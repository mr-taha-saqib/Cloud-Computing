param location string

resource monitor 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'monitorSettings'
  properties: {
    storageAccountId: resourceId('Microsoft.Storage/storageAccounts', 'tahastorage')
    metrics: [
      {
        category: 'Percentage CPU'
        enabled: true
      }
    ]
  }
}
