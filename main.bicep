param environment object

resource managedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = [for (item, index) in environment.micount: {
  name: '${environment.name}-mi-${index}'
  location: environment.location
}]

