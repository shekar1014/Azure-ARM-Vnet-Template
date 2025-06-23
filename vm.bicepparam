using './vm.bicep'

param vmName = 'myVM'
param adminUsername = 'azureuser'
param adminPassword = 'India@password123!' // Avoid hardcoding in real deployments
param vnetName = 'myVnet'
param subnetName = 'test-subnet'
param nsgName = 'myNsg'
