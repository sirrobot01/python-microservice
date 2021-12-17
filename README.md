### Microservices template


This is a fun project. basically it comprises three python services(you can add more).

I used makefile to handle most of the development server.

I will be updating this over time.

Feel free ot contribute.


### Starting Dev server

#### Initializing virtual environments

Each must have a requirements.txt file.

```shell
make env name=core
```

`core` here is the Django app, replace `core` with the service folder name

This command will;
- will create a `venv` folder
- upgrade pip
- install the packages in the requirements.txt file

#### Server


```shell
make core
make flask
make fastapi
```

Calling each of this service will start them up, check the Makefile file to edit or change names


#### Todo

- Add Docker and Docker Compose
- Add environmental variables for syncing
- Add a connector for the services


