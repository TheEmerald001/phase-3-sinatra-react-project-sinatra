# MORINGA X FLATIRON SCHOOL PHASE III IP

# BUILDING APIS WITH SINATRA

## PROJECT GOALS

- To Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

This project is undertaken to fulfil and thus thus prove the use of ruby to develop a backend that will be
  utilised by a react frontend.

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Specifications

The following are the features implemented in this project:

- Use of Active Record to interact with a database.
- Models with a one-to-many relationship.
- API routes in Sinatra taht:
  - create and read actions for both models
  - full CRUD capability for othe models

## Additionally:
In addition to this, a react front end is built [here](https://github.com/TheEmerald001/happy-stays) that;
- Interacts with the API to perform CRUD actions.


## Instructions

To get started, [clone/fork](https://github.com/TheEmerald001/phase-3-sinatra-react-project-sinatra/fork) this repo and run
`bundle install` to install the gems.


The `app/controllers/application_controller.rb` file has the routes to listening for a fetch.

Start the server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

Feel free to interact with the DB by querying and using various methods and seed data.

