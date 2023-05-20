param serviceBusNamespaceName string
param location string
param tags object
param keyVaultName string

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2021-11-01' = {
  name: serviceBusNamespaceName
  tags: tags
  location: location
  sku: {
    name: 'Standard'
  }
  properties: {}
}

resource serviceBusJsonTopic 'Microsoft.ServiceBus/namespaces/topics@2021-11-01' = {
  name: 'json-topic'
  parent: serviceBusNamespace
}

resource serviceBusSubscription 'Microsoft.ServiceBus/namespaces/topics/subscriptions@2021-11-01' = {
  name: 'json-subscription'
  parent: serviceBusJsonTopic
}

resource keyVault 'Microsoft.KeyVault/vaults@2023-02-01' existing = {
  name: keyVaultName
}

var endpoint = '${serviceBusNamespace.id}/AuthorizationRules/RootManageSharedAccessKey'

resource serviceBusNamespaceConnectionString 'Microsoft.KeyVault/vaults/secrets@2023-02-01' = {
  name: 'service-bus-connection-string'
  parent: keyVault
  properties: {
    value: 'Endpoint=sb://${serviceBusNamespace.name}.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=${listKeys(endpoint, serviceBusNamespace.apiVersion).primaryKey}'
  }
}

output serviceBusNamespaceName string = serviceBusNamespace.name
