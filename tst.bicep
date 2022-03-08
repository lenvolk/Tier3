// Add-AzAccount
// Get-AzSubscription -SubscriptionName "LabSub" | Select-AzSubscription
// New-AzResourceGroupDeployment -ResourceGroupName Security -TemplateFile .\tst.bicep -Whatif

param testString string = '123'
param index int = 1
@description('Required. Creating UTC for deployments.')
param deploymentNameSuffix string = utcNow()
param tenantId string = subscription().tenantId
param SubName string = subscription().displayName

output stringOutput1 string = padLeft(testString, 5, '0')
output stringOutput2 string = padLeft(index, 2, '0')
output stringOutput3 string = deploymentNameSuffix
output stringOutput4 string = tenantId
output stringOutput5 string = SubName
