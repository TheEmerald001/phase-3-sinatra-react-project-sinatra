# MORINGA X FLATIRON SCHOOL PHASE III IP

# BUILDING APIS WITH SINATRA

## PROJECT GOALS

- To Build a basic web API with Sinatra and Active Record to support a React frontend

## Introduction

This project is undertaken to fulfil and thus prove the use of ruby to develop a backend that will be utilised by a react frontend.

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Specifications

The following are the features implemented in this project:

- Use of Active Record to interact with a database.
- Models with a one-to-many relationship.
- API routes in Sinatra that:
  - create and read actions for both models
  - Offer a full CRUD capability for other models

## Additionally:
In addition to this, a react front end is built [here](https://github.com/TheEmerald001/happy-stays) that;
- Interacts with the API to perform CRUD actions.


## Instructions

To get started, [clone/fork](https://github.com/TheEmerald001/phase-3-sinatra-react-project-sinatra/fork) this repo and run
`bundle install` to install the gems.


The `app/controllers/application_controller.rb` file has the routes to listening for a fetch.

Start the server with:

```console
$ bundle exec rerun -b 'rackup config.ru'
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

Ther local server is able to respond to requests and acept incoming data for a persisted nature.

