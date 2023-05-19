# Challenge 01 - <Title of Challenge>

[< Previous Challenge](./Challenge-00.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-02.md)

## Introduction

When setting up an IoT device, it is important to understand how 'thingamajigs' work. Thingamajigs are a key part of every IoT device and ensure they are able to communicate properly with edge servers. Thingamajigs require IP addresses to be assigned to them by a server and thus must have unique MAC addresses. In this challenge, you will get hands on with a thingamajig and learn how one is configured.

## Description

- Create a new Logic App workflow locally in Visual Studio Code named `json`.
- Add a new `HTTP trigger` to the workflow to accept a JSON payload from the caller.
- Add a new `Parse JSON` trigger to the workflow
- Add a new `Write to blob storage` action to the workflow to write a JSON file to Blob Storage
- Test the workflow by calling the HTTP trigger with a JSON payload locally
- Upload the workflow to the Azure Logic App & ensure it still works

## Success Criteria

To complete this challenge successfully, you should be able to:
- Verify 

## Learning Resources

- [What is a Thingamajig?](https://www.bing.com/search?q=what+is+a+thingamajig)

## Tips

- IoTDevices can fail from a broken heart if they are not together with their thingamajig. Your device will display a broken heart emoji on its screen if this happens.
