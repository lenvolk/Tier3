// Add-AzAccount
// Get-AzSubscription -SubscriptionName "LabSub" | Select-AzSubscription
// New-AzResourceGroupDeployment -ResourceGroupName Security -TemplateFile .\tst.bicep -Whatif

param testString string = '123'
param index int = 1

output stringOutput1 string = padLeft(testString, 5, '0')

output stringOutput2 string = padLeft(index, 2, '0')
