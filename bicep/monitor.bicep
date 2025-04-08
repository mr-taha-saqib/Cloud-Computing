param location string
param storageAccountId string
param vm1Id string
param vm2Id string
param nic1Id string
param nic2Id string

resource monitor 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'monitorSettings'
  properties: {
    storageAccountId: storageAccountId
    metrics: [
      {
        category: 'Percentage CPU'
        enabled: true
      }
      {
        category: 'Network In'
        enabled: true
      }
      {
        category: 'Network Out'
        enabled: true
      }
    ]
    logs: [
      {
        category: 'AuditLogs'
        enabled: true
        retentionPolicy: {
          days: 30
          enabled: true
        }
      }
    ]
    resources: [
      vm1Id
      vm2Id
      nic1Id
      nic2Id
    ]
  }
}
