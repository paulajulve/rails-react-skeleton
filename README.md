# Ruby on Rails + React skeleton

Simple skeleton to hold a Rails API acting as the backend of a React application.

It uses Rails 6 on Ruby 2.7, a standard postgres image for persistence, and React 16.

## How to develop
A docker environment has been added so that you can easily build up the project and see it working locally.

If you don't have these tools already, you'll need to install:
- [Docker](https://docs.docker.com/get-docker/)
- [docker compose](https://docs.docker.com/compose/install/)


#### Build the project
The first time you set up this project, you'll need to take some extra steps to build the database and run migrations. To make it easier, I've included a Makefile that takes care of these steps for you. You just need to execute this:
```
$ make build
```
This will build the project and leave it running. Ready for development. But remember this is only necessary the first time you set it up.

Once the containers are up and running, you can head to `localhost:3000` to check it out.

#### Spin up the project
If you have already built the project, next time you want to spin it up, simply:
```
$ docker-compose up -d
```

#### Gracefully shut down
To gracefully shut down the container, execute:
```
$ docker-compose down
```

> Note: if you work on a linux based environment, all the files created within the server container making use of the rails tools will belong to root and not to your user. A user can be added to the Dockerfile to mitigate this problem, but I have not done it here. Keep in mind that you'll have to chown those files or modify the Dockerfile to be able to work with them.

> Note: The rack-cors gem was added to allow handling of API CORS. It's been setup to accept localhost requests, so that you can use this skeleton to develop, but keep in mind that if you ever deploy it, you'd have to reconfigure it on `backend/config/initializers/cors.rb`