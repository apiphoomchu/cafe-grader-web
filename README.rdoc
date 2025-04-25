# Cafe Grader Docker Setup

This document provides instructions for running Cafe Grader using Docker and Docker Compose.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1. Clone the repository:

   ```
   git clone <repository-url>
   cd cafe-grader-web
   ```

2. Build and start the containers:

   ```
   docker-compose up --build
   ```

3. Access the application:
   Once the containers are running, you can access the application at http://localhost:3000

## Docker Compose Configuration

The `docker-compose.yml` includes the following services:

- **web**: The Rails application
- **db**: MySQL database server

## Database Setup

The database is automatically set up when the containers start for the first time. The default credentials are:

- Database: `grader`
- Username: `grader`
- Password: `Grader@1234`

## Development

For development, the application code is mounted as a volume, so changes you make to the code will be reflected in the running application. You may need to restart the server for some changes to take effect.

## Customizing the Configuration

To customize the configuration, you can:

1. Modify the environment variables in the `docker-compose.yml` file
2. Create a `.env` file in the project root with your environment variables

## Stopping the Services

To stop the running containers:

```
docker-compose down
```

To stop the containers and remove the volumes (this will delete all data):

```
docker-compose down -v
```
