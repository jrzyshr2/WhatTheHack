# Challenge 03 - <Title of Challenge>

[< Previous Challenge](./Challenge-02.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-04.md)

## Introduction

## Description

- Add a step to put message on Service Bus topic `json-topic`
  - Set the `Label` to the `name` field from the JSON input
  - Set the `Content` to the `value` field from the JSON input
- Remove the `Upload blob` step from the original workflow
- Add a new workflow to receive the message from the Service Bus topic (via the `storage-subscription`) & upload to Blob Storage
- Add a new workflow to receive the message from the Service Bus topic (via the `sql-subscription`) & insert into SQL
- Test and see if the blob is uploaded to the storage account & the SQL database has a new row

## Success Criteria

To complete this challenge successfully, you should be able to:
- Verify that the IoT device boots properly after its thingamajig is configured.
- Verify that the thingamajig can connect to the mothership.
- Demonstrate that the thingamajic will not connect to the IoTProxyShip

## Learning Resources

- [What is a Thingamajig?](https://www.bing.com/search?q=what+is+a+thingamajig)

## Tips
