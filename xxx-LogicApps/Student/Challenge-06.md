# Challenge 06 - <Title of Challenge>

[< Previous Challenge](./Challenge-05.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-07.md)

## Introduction

When setting up an IoT device, it is important to understand how 'thingamajigs' work. Thingamajigs are a key part of every IoT device and ensure they are able to communicate properly with edge servers. Thingamajigs require IP addresses to be assigned to them by a server and thus must have unique MAC addresses. In this challenge, you will get hands on with a thingamajig and learn how one is configured.

## Description

- Look at the `Configuration->Application Settings` section of your Logic App and note the app setting names & values for the following parameters:
  - STORAGE_ACCOUNT_CONTAINER_NAME
- Add a parameter to the `storage` workflow and pull the name of the storage account container from App Settings
  - `@appsetting('STORAGE_ACCOUNT_CONTAINER_NAME')`
- Save & test your workflow to ensure it still works

## Success Criteria

To complete this challenge successfully, you should be able to:
- Verify that the IoT device boots properly after its thingamajig is configured.
- Verify that the thingamajig can connect to the mothership.
- Demonstrate that the thingamajic will not connect to the IoTProxyShip

## Learning Resources

- [IoT & Thingamajigs: Together Forever](https://www.youtube.com/watch?v=yPYZpwSpKmA)

## Tips