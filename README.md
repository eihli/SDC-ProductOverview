# Changes

## Postgres Dockerfile

There is a new dockerfile in `dockerfiles/postgres/Dockerfile` that builds an image for running a database locally.

`cd dockerfiles/postgres/ && docker build -t sdc-pg .`

`docker run --rm -it -p 5432:5432 sdc-pg`

For details on Dockerfile, see https://docs.docker.com/engine/reference/builder/#env and https://hub.docker.com/_/postgres/

## "Datasource" to switch between local "mock" data and real "database" data.

New file at `database-postgres/dataSource.js`.

It creates a generic "DataSource" class that has a constructor that instantiates either a "PostgresDataSource" or a "MockDataSource", depending on which config you're using. 

Which config you want to use can be changed by setting an environment variable in your console.

`DATA_SOURCE=mock npm run-script start` will start the server using the mock data source.
`DATA_SOURCE=postgres npm run-script start` will start the server using the "real" data source.

## Server interacts with "DataSource"

The server routes are no longer tied to a specific data source. The server routes expect something that has `getSingleProduct`, `getSingleProductStyles`, etc... methods. And it expects those methods to return promises.

This way, the "DataSource" doesn't need to know that it is part of a request/response chain. You can use the DataSource from a test, or from a command line, or anywhere.

And the Server doesn't need to know that it's talking to Posgtres, or getting mock data from a json file, or whatever. It just knows it will get a Promise that will resolve with the data that it needs. (Or throw an error).


## Tests

I added a `test/dataSource-test` file to make sure I had no syntax errors when I first started writing code. The test file is a good way to make sure what you're writing is working when you don't have enough code to verify EVERYTHING. You can verify one little thing at a time.
