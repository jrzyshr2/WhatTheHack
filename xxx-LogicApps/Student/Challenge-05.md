# Challenge 05 - <Title of Challenge>

[< Previous Challenge](./Challenge-04.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-06.md)

## Introduction

## Description

- Add a `required` field to the `json` workflow `Parse JSON` action schema to validate that the required JSON body values are specified
- Add a parallel branch after the `Parse JSON` action to handle valid & invalid input data
  - Valid input data should put a message on the Service Bus as before, but with an additional `Response` action afterwards indicated to the caller that the message was accepted.
    - Ensure the `Run After` tab on the `Send message` action is set to `Parse JSON is successful`
  - Invalid input data should return a `Response` action with a `400` status code & a `body` message indicating the error
    - Ensure the `Run After` tab on the `Response` action is set to `Parse JSON has failed`
- Test the workflow with valid & invalid JSON input data

You can view an architectural diagram of an IoT thingamajig here: [Thingamajig.PDF](/Student/Resources/Architecture.PDF?raw=true).

## Success Criteria

To complete this challenge successfully, you should be able to:
- Verify that the IoT device boots properly after its thingamajig is configured.
- Verify that the thingamajig can connect to the mothership.
- Demonstrate that the thingamajic will not connect to the IoTProxyShip

## Learning Resources

- [IoT & Thingamajigs: Together Forever](https://www.youtube.com/watch?v=yPYZpwSpKmA)

## Tips

A sample JSON schema validation looks like this:
```json
{
  "properties": {
      "name": {
          "type": "string"
      },
      "value": {
          "type": "string"
      }
  },
  "required": [
      "name",
      "value"
  ],
  "type": "object"
}
```