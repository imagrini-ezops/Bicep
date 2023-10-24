targetScope = 'subscription'
param location string = 'eastus'
resource ezopsresourcegroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-test-01'
  location: location
}
