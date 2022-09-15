param location string = 'centralus'

resource azbicepASP 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'asp-studapp-dev-001'
  location: location
  sku: {
    name: 'f1'
    capacity: 1
  }
}

resource azbicepAppService 'Microsoft.Web/sites@2021-01-15' = {
  name: 'as-studapp-dev-001'
  location: location
  // tags: {
  //   'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/appServicePlan': 'Resource'
  // }
  properties: {
    serverFarmId: resourceId('Microsoft.Web/serverfarms', 'asp-studapp-dev-001')
  }
}

resource azbicepinsight 'Microsoft.Insights/components@2020-02-02' = {
  name: 'ai-studapp-dev-web1-001'
  location: location
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}


