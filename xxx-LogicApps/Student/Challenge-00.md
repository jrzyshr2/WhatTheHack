# Challenge 00 - Prerequisites - Ready, Set, GO!

**[Home](../README.md)** - [Next Challenge >](./Challenge-01.md)

## Introduction

Thank you for participating in the LogicApps What The Hack. Before you can hack, you will need to set up some prerequisites.

## Prerequisites

- [Azure Subscription](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-subscription)
  - You will need _Owner_ permissions on the subscription to complete the hack (due to needing to grant RBAC access to the managed identity of the Logic App)
- [Managing Cloud Resources](../../000-HowToHack/WTH-Common-Prerequisites.md#managing-cloud-resources)
  - [Azure Portal](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-portal)
  - [Azure CLI](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-cli)
    - [Note for Windows Users](../../000-HowToHack/WTH-Common-Prerequisites.md#note-for-windows-users)
    - [Azure PowerShell CmdLets](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-powershell-cmdlets)
  - [Azure Cloud Shell](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-cloud-shell)
- [.NET 6](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
- [PowerShell Core](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3)
- [Visual Studio Code](../../000-HowToHack/WTH-Common-Prerequisites.md#visual-studio-code)
  - [Logic Apps Standard extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurelogicapps)
- [Azure Developer CLI](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/install-azd?tabs=winget-windows%2Cbrew-mac%2Cscript-linux&pivots=os-windows)
- [Azure Functions Core Tools](https://learn.microsoft.com/en-us/azure/azure-functions/functions-run-local?tabs=v4%2Cwindows%2Ccsharp%2Cportal%2Cbash)
- [Azure Storage Emulator](https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azurite?tabs=visual-studio-code)

## Description

Your coach will provide you with a Resources.zip file that contains resources you will need to complete the hack. If you plan to work locally, you should unpack it on your workstation. If you plan to use the Azure Cloud Shell, you should upload it to the Cloud Shell and unpack it there.

Choose 1 of the options below to deploy the resources to your Azure subscription.

### Option1: Deploying using Azure Developer CLI

1.  Deploy the Azure infrastructure & code by running the following Azure Developer CLI command:

```shell
azd up
```

If any part of this script fails, you can use _Option 2_ below instead.

### Option2: Deploying using Azure CLI

1.  Modify the `infra/main.parameters.json` file with unique values for your deployment.

- environmentName - a unique name for your deployment (i.e. use your name or initials)
- location - the Azure region to deploy to (i.e. SouthCentralUS)
- sqlAdminLoginName - the name of the SQL admin account (your User Principal Name)

  You can run the following command to find out your UPN.

  ```shell
  az ad signed-in-user show --query userPrincipalName -o tsv
  ```

- sqlAdminLoginObjectId - the object ID of the SQL admin account (your User Principal Name)

  You can run the following command to find out your object ID.

  ```shell
  az ad signed-in-user show --query id -o tsv
  ```

- sqlClientIpAddress - the IP address of your workstation

  You can run the following command to find out your IP address.

  ```shell
  $(Invoke-WebRequest -Uri "https://api.ipify.org").Content
  ```

1.  Deploy the Bicep files by running the following Azure CLI commands (you can change the `location` parameter if needed)

```shell
cd infra
az deployment sub create --location SouthCentralUS --template-file ./main.bicep --parameters ./main.parameters.json
```

## Success Criteria

To complete this challenge successfully, you should be able to:

- Verify that you have a shell with the Azure CLI available.
- Verify that the ARM template has deployed the following resources in Azure:
  - Azure Logic Apps
  - Azure Functions
  - Azure SQL Database
  - Azure Storage Account
  - Azure Key Vault
  - Azure Application Insights
  - Azure Log Analytics Workspace
