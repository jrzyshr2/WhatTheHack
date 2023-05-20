# Challenge 02 - <Title of Challenge> - Coach's Guide 

[< Previous Solution](./Solution-01.md) - **[Home](./README.md)** - [Next Solution >](./Solution-03.md)

## Notes & Guidance

SQL needed to create ID for managed identity.

```sql
CREATE USER [id-5vufwrvt62ry2] FROM EXTERNAL PROVIDER;
ALTER ROLE db_datareader ADD MEMBER [id-5vufwrvt62ry2];
ALTER ROLE db_datawriter ADD MEMBER [id-5vufwrvt62ry2];
GO;
```

