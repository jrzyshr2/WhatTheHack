param serviceBusNamespaceName string
param location string
param tags object

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2021-11-01' = {
  name: serviceBusNamespaceName
  tags: tags
  location: location
  sku: {
    name: 'Standard'
  }
  properties: {}
}

output serviceBusNamespaceName string = serviceBusNamespace.name
