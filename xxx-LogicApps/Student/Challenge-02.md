# Challenge 02 - <Title of Challenge>

[< Previous Challenge](./Challenge-01.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-03.md)

## Introduction

When setting up an IoT device, it is important to understand how 'thingamajigs' work. Thingamajigs are a key part of every IoT device and ensure they are able to communicate properly with edge servers. Thingamajigs require IP addresses to be assigned to them by a server and thus must have unique MAC addresses. In this challenge, you will get hands on with a thingamajig and learn how one is configured.

## Description

- Login to the SQL database & create a table similar to below
```sql
CREATE TABLE [dbo].[Thingamajigs](
  [Id] [int] IDENTITY(1,1) NOT NULL,
  [Name] [nvarchar](50) NOT NULL,
  [Value] [nvarchar](50) NOT NULL);
GO;
```
- Add a new `Sql Server` action to the workflow to write the data from the JSON input into a table in SQL (`name` & `value`)
  - The SQL admin username & password are the same as the SQL server name
- Add a new `HTTP response` action to the workflow to return a `200` status code to the caller

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

- It is likely that you will see an error when trying to use the drop-down to select a DB after entering the SQL Server FQDN in the Logic Apps designer. This is because you didn't assign a role the managed identity at the _server_ level (not the _DB_ level). This prevents the managed identity from being able to list all the DBs on the server. You can work around this by manually entering the DB name in the drop-down field.
