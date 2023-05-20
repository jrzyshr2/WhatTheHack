# Challenge 07 - <Title of Challenge>

[< Previous Challenge](./Challenge-06.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-08.md)

## Introduction

## Description

- Review the code for the pseudo-SAP order system (especially how to call it)
  - Look in the `src/api` directory
  - Try to call the endpoint that is deployed to Azure using Postman to get a feel for how to call it
- Enable `EasyAuth` on the Azure Function to simulate having to authenticate against an OAuth2 endpoint to get an SAP order number
  - Use the `Microsoft` identity provider (which will automatically create an app registration in your tenant)
  - Enable the `HTTP 401 Unauthorized: recommended for APIs` option
- Get the following info out of Azure Active Directory so you can assign the managed identity access to call your Function App
  - The `Object ID` of the `Enterprise App` (service principal) that was created when you enabled `EasyAuth` on the Function App (same name as the Function App)
  - The `Object ID` of the `Managed Identity` that was created by the deployment script
- Modify the `sql` Logic App workflow to call out to the Azure Function to get the SAP order number
  - Add a `HTTP` action to the workflow & call the Azure Function (using `Managed identity` authentication)
  - Add a `Parse JSON` action to parse the results of the call to the SAP order number function
  - Add the results of the call to the SAP order number system to the row that is being inserted into the database

You can view an architectural diagram of an IoT thingamajig here: [Thingamajig.PDF](/Student/Resources/Architecture.PDF?raw=true).

## Success Criteria

To complete this challenge successfully, you should be able to:
- Verify that the IoT device boots properly after its thingamajig is configured.
- Verify that the thingamajig can connect to the mothership.
- Demonstrate that the thingamajic will not connect to the IoTProxyShip

## Learning Resources

- [What is a Thingamajig?](https://www.bing.com/search?q=what+is+a+thingamajig)

## Tips

- Use the following command to grant the managed identity access to the Function App service principal
  ```powershell
  New-AzureADServiceAppRoleAssignment -ObjectId {MANAGED-IDENTITY-ID} -Id 00000000-0000-0000-0000-000000000000 -PrincipalId {MANAGED-IDENTITY-ID} -ResourceId {ENTERPRISE-APP-OBJECT-ID}
  ```
- The `audience` of the Managed Identity authentication will be the `Application ID URI` of the Function App service principal