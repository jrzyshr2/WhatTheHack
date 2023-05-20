# Challenge 01 - <Title of Challenge>

[< Previous Challenge](./Challenge-00.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-02.md)

## Introduction

When setting up an IoT device, it is important to understand how 'thingamajigs' work. Thingamajigs are a key part of every IoT device and ensure they are able to communicate properly with edge servers. Thingamajigs require IP addresses to be assigned to them by a server and thus must have unique MAC addresses. In this challenge, you will get hands on with a thingamajig and learn how one is configured.

## Description

- Create a new Logic App workflow locally in Visual Studio Code named `json`.
- Add a new `HTTP trigger` to the workflow to accept a JSON payload from the caller.
- Add a new `Parse JSON` trigger to the workflow (use the `Use sample payload to generate schema` option to generate the schema based upon the JSON payload below)
- Add a new `Upload blob to storage container` action to the workflow to write a JSON file to the Blob Storage account that ends in `files` and has a container named `files`.
  - Recommendation is to use the `Built-in` connector for `Azure Blob Storage`
  - Prepend a unique identifier to the `Blob name` of the blob (such as the `Enqueue Time UTC` so you get a unique file name each time)
- Upload the workflow to the Azure Logic App
- Call the URL of the Logic App from Postman, passing in the JSON payload below:
```json
{
    "name": "Thingamajig",
    "value": "1234"
}
```

## Success Criteria

To complete this challenge successfully, you should be able to:
- Verify 

## Learning Resources

- [What is a Thingamajig?](https://www.bing.com/search?q=what+is+a+thingamajig)

## Tips

- Make sure the `Azurite` emulator is running before opening the Visual Studio Code Logic Apps designer.
  - In Visual Studio Code, press `Ctrl+Shift+P` and type `Azurite: Start` to start the emulator.
