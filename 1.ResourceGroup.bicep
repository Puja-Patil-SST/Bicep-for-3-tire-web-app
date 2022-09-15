@description('Specifies the location for resources.')
param location string = 'eastus'
targetScope = 'subscription'
resource azbicepRG 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-studapp-dev-001'
  location: location
}
