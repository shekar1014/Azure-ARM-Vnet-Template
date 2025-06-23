using './Vnet.bicep'

param vnetName = 'myVnet'
param vnetAddressPrefix = '10.0.0.0/16'
param nsgName = 'myNsg'

param subnets = [
  {
    name: 'test-subnet'
    addressPrefix: '10.0.1.0/24'
  }
  {
    name: 'dev-subnet'
    addressPrefix: '10.0.2.0/24'
    serviceEndpoints: [
      'Microsoft.Storage'
    ]
  }
  {
    name: 'prod-subnet'
    addressPrefix: '10.0.3.0/24'
    delegations: [
      {
        name: 'myDelegation'
        serviceName: 'Microsoft.Web/serverFarms'
      }
    ]
  }
]
