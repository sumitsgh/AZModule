@description('Optional. Location for all resources.')
param location string = resourceGroup().location

module vnet 'modules/network/virtual-network/main.bicep' = {
 name: 'vnetDeploy'
params:{
  name: 'myVnet-hub'
  location: location
  addressPrefixes: ['10.0.0.0/16'
]
  subnets:[
    {
      name: 'mygsubnet1'
      addressPrefix: '10.0.0.0/24'
    }
    {
      name: 'mygsubnet2'
      addressPrefix: '10.0.1.0/24'
    }
  ]

}
}





