param location string = 'South India'
param resourceGroupName string = 'ml-rg'
param workspaceName string = 'ml-workspace'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' existing = {
  name: resourceGroupName
}

resource mlWorkspace 'Microsoft.MachineLearningServices/workspaces@2023-04-01' existing = {
  name: workspaceName
  parent: resourceGroup
}

output workspaceId string = mlWorkspace.id
output workspaceLocation string = mlWorkspace.location
output workspaceProvisioningState string = mlWorkspace.properties.provisioningState
output workspaceFriendlyName string = mlWorkspace.properties.friendlyName
