param sqlServerName string
param sqlDbName string
param tags object
param location string
param sqlAdminLoginName string
param sqlAdminLoginObjectId string
param sqlClientIpAddress string

resource sqlServer 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: sqlServerName
  location: location
  tags: tags
  properties: {
    administrators: {
      azureADOnlyAuthentication: true
      administratorType: 'ActiveDirectory'
      tenantId: subscription().tenantId
      principalType: 'User'
      login: sqlAdminLoginName
      sid: sqlAdminLoginObjectId
    }
    publicNetworkAccess: 'Enabled'
  }
}

resource sqlDB 'Microsoft.Sql/servers/databases@2022-05-01-preview' = {
  parent: sqlServer
  name: sqlDbName
  tags: tags
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}

resource azurefirewallRules 'Microsoft.Sql/servers/firewallRules@2022-08-01-preview' = {
  name: 'AllowAllAzureIps'
  parent: sqlServer
  properties: {
    startIpAddress: '0.0.0.0'
    endIpAddress: '0.0.0.0'
  }
}

resource clientFirewallRules 'Microsoft.Sql/servers/firewallRules@2022-08-01-preview' = {
  name: 'AllowClientIp'
  parent: sqlServer
  properties: {
    startIpAddress: sqlClientIpAddress
    endIpAddress: sqlClientIpAddress
  }
}
