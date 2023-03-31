param environment object
param environmentName string

var env = environment[environmentName]

resource managedIdentityInitial 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name: '${env.name}-mi-initial'
  location: env.location
}

resource managedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = [for index in range(1, env.micount): {
  name: '${env.name}-mi-${index}'
  location: env.location
}]
