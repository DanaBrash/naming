# Naming Module

This Terraform module standardizes Azure resource names using official abbreviations, following Microsoft's Cloud Adoption Framework naming conventions.

---

## 🚀 Usage

```hcl
module "naming" {
  source   = "git::https://github.com/DanaBrash/naming"
  projName = "myproj"
  loc      = "eastus2"
  iterator = 1
}

resource "azurerm_resource_group" "example" {
  name = module.naming.name["resourcegroup"]
}
```

---

## 📦 Output

The module exposes a single output:

```hcl
output "name" {
  value = {
    "<key>" = "{var.projName}{local.loc_abbr}<abbr>{var.iterator}"
  }
}
```

You can reference any supported resource using:
```hcl
module.naming.name["<resourcekey>"]
```

---

## ✅ Valid Resource Keys

Here are the currently supported normalized resource keys (from your CSV file):

```
aisearch
akscluster
akssystemnodepool
aksusernodepool
apimanagementserviceinstance
appconfigurationstore
applicationgateway
applicationinsights
applicationsecuritygroup(asg)
appserviceenvironment
appserviceplan
automationaccount
availabilityset
azureaifoundryhub
azureaifoundryproject
azureaiservices
azureaivideoindexer
azureanalysisservicesserver
azurearcenabledkubernetescluster
azurearcenabledserver
azurearcgateway
azurearcprivatelinkscope
azurebastion
azurecacheforredisinstance
azurecosmosdbdatabase
azurecosmosdbforapachecassandraaccount
azurecosmosdbforapachegremlinaccount
azurecosmosdbformongodbaccount
azurecosmosdbfornosqlaccount
azurecosmosdbfortableaccount
azurecosmosdbpostgresqlcluster
azuredatabricksworkspace
azuredataexplorercluster
azuredataexplorerclusterdatabase
azuredatafactory
azuredigitaltwininstance
azureloadtestinginstance
azuremachinelearningworkspace
azuremanagedgrafana
azuremigrateproject
azuremonitoractiongroup
azuremonitoralertprocessingrule
azuremonitordatacollectionrule
azureopenaiservice
azurepolicydefinition
azuresqldatabase
azuresqldatabaseserver
azuresqlelasticjobagent
azuresqlelasticpool
azurestorsimple
azurestreamanalytics
azuresynapseanalyticsprivatelinkhub
azuresynapseanalyticssparkpool
azuresynapseanalyticssqldedicatedpool
azuresynapseanalyticsworkspaces
backupvaultname
backupvaultpolicy
batchaccounts
blueprint(plannedfordeprecation)
blueprintassignment(plannedfordeprecation)
botservice
cdnendpoint
cdnprofile
cloudservice
communicationservices
computervision
connections
containerapps
containerappsenvironment
containerinstance
containerregistry
contentmoderator
contentsafety
customvision(prediction)
customvision(training)
databasemigrationserviceinstance
datacollectionendpoint
datalakeanalyticsaccount
datalakestoreaccount
diskencryptionset
dns
dnsforwardingruleset
dnsprivateresolver
dnsprivateresolverinboundendpoint
dnsprivateresolveroutboundendpoint
dnszone
documentintelligence
eventgriddomain
eventgridsubscriptions
eventgridsystemtopic
eventgridtopic
eventhub
eventhubsnamespace
expressroutecircuit
expressroutedirect
expressroutegateway
faceapi
fileshare
firewall
firewallpolicy
frontdoor(classic)
frontdoor(standard/premium)endpoint
frontdoor(standard/premium)profile
frontdoorfirewallpolicy
functionapp
gallery
hdinsight-hadoopcluster
hdinsight-hbasecluster
hdinsight-kafkacluster
hdinsight-mlservicescluster
hdinsight-sparkcluster
hdinsight-stormcluster
healthinsights
hostingenvironment
imagetemplate
immersivereader
integrationaccount
iothub
ipgroup
keyvault
keyvaultmanagedhsm
languageservice
loadbalancer(external)
loadbalancer(internal)
loadbalancerrule
localnetworkgateway
loganalyticsquerypacks
loganalyticsworkspace
logicapp
manageddisk(data)
manageddisk(os)
managedidentity
managementgroup
mapsaccount
mariadbdatabase
mariadbserver
microsoftpurviewinstance
mysqldatabase
natgateway
networkinterface(nic)
networksecuritygroup(nsg)
networksecuritygroup(nsg)securityrules
networkwatcher
notificationhubs
notificationhubsnamespace
postgresqldatabase
powerbiembedded
privateendpoint
privatelink
provisioningservices
provisioningservicescertificate
proximityplacementgroup
publicipaddress
publicipaddressprefix
recoveryservicesvault
resourcegroup
restorepointcollection
routefilter
routeserver
routetable
servicebusnamespace
servicebusqueue
servicebustopic
servicebustopicsubscription
serviceendpointpolicy
servicefabriccluster
servicefabricmanagedcluster
signalr
snapshot
speechservice
sqlmanagedinstance
sqlserverstretchdatabase
sshkey
staticwebapp
storageaccount
storagesyncservicename
templatespecsname
timeseriesinsightsenvironment
trafficmanagerprofile
translator
userdefinedroute(udr)
virtualdesktopapplicationgroup
virtualdesktophostpool
virtualdesktopscalingplan
virtualdesktopworkspace
virtualmachine
virtualmachinemaintenanceconfiguration
virtualmachinescaleset
virtualnetwork
virtualnetworkgateway
virtualnetworkmanager
virtualnetworkpeering
virtualnetworksubnet
virtualwan
virtualwanhub
vmstorageaccount
vpnconnection
vpngateway
vpnsite
webapp
webapplicationfirewall(waf)policy
webapplicationfirewall(waf)policyrulegroup
webpubsub
```

⚠️ Attempting to access an undefined key (e.g. `module.naming.name["rezgp"]`) will result in an error. Check this list or the Terraform error message to verify the accepted values.

---

## 📄 About

This module is maintained by Dana Brash. It is designed to work as a plug-and-play naming engine in Azure Terraform deployments.

