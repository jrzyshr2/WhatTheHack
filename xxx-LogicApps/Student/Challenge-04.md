# Challenge 04 - <Title of Challenge>

[< Previous Challenge](./Challenge-03.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-05.md)

## Introduction

## Description

- View the `application-map` in Application Insights to get an overview of the application calls
- View the `Logs` & the `requests` table in Application Insights to see the raw data
- Add a correlation ID to the incoming HTTP request & propagate it through the application
  - `json` workflow
    - Add the following code to the `Tracking Id` section of the  `HTTP` trigger (in the `Settings` tab)
      - `@{coalesce(triggerOutputs().headers?['x-my-custom-correlation-id'], guid())}`
    - Add the following code to the `Send message` action of the `json` workflow
      - Add the `Correlation` parameter & set its value to `trigger().clientTrackingId`
  - `storage` and `sql` workflows
    - Add the following code to the `Split-On Tracking Id` section of the `When messages are available in a topic` Service Bus trigger (in the Settings tab)
      - `@{coalesce(triggerOutputs()?['body']?['correlationId'], guid())}`
- View the correlation ID propagating through the logs in the Application Insights `Tracking search` blade
  - Filter on `prop__clientTrackingId` and get the correlation ID from the starting `json` workflow last execution run
- Try again by passing a custom header `x-my-custom-correlation-id` with a unique value and look at the `Tracking search` logs again to see that you can now correlate with a custom ID instead of a random GUID.

## Success Criteria

To complete this challenge successfully, you should be able to:
- Verify that the IoT device boots properly after its thingamajig is configured.
- Verify that the thingamajig can connect to the mothership.
- Demonstrate that the thingamajic will not connect to the IoTProxyShip

## Learning Resources

- [What is a Thingamajig?](https://www.bing.com/search?q=what+is+a+thingamajig)
- [10 Tips for Never Forgetting Your Thingamajic](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
- [IoT & Thingamajigs: Together Forever](https://www.youtube.com/watch?v=yPYZpwSpKmA)

## Tips
