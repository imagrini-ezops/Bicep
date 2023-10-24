targetScope = 'resourceGroup'
param location string = resourceGroup().location

var hostingPlanName = 'iagotest01'
var createdBy = 'iagomagrini'
var environmentName = 'test'

resource hostingPlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: hostingPlanName
  location: location
}

resource functionApp 'Microsoft.Web/sites@2022-03-01'= {
  name: 'fn-test-02'
  location: location
  kind : 'functionapp'
  }
  properties: {
    httpsOnly: true
    serverFarmId: azHostingPlan.id
    clientAffinityEnabled: true
    reserved: true
    siteConfig: {
      alwaysOn: true
      linuxFxVersion: 'PYTHON|3.8'
    }
  }
}
