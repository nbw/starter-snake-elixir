# starter-snake-elixir

A simple [Battlesnake AI](http://battlesnake.io) written in Elixir using a [Cowboy](https://hex.pm/packages/cowboy) server and [Poison](https://hex.pm/packages/poison) library.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

### App Overview

- `elixir_snake.ex` is where the three actions must be implemented: `start`, `move`, `end`

- Each handler is already set up to parse and render JSON.

### Setup and Installation


#### 1. Install Elixir

These steps assume you've installed Elixir locally. If you haven't follow the [offical installation guidelines](https://elixir-lang.org/install.html).


#### 2. Fork and clone this repo:

```
git clone git@github.com:battlesnakeio/starter-snake-elixir.git
cd starter-snake-elixir
```

#### 3. Install Hex:

```
mix local.hex
```

#### 4. Install dependencies:

```
mix deps.get
```

#### 5. Run the server:

```
iex -S mix
```

Test the client in your browser: [http://localhost:8085](http://localhost:8085)

####  Changing the port (optional)

The default port can be changed in `config/config.exs`.

### Testing

You can run the test suite by:

```
mix test
```

### Deploying to Heroku

Click the Deploy to Heroku button at the top or use the command line commands below.

Create a new Heroku app:

```
heroku apps:create APP_NAME
```

Push code to Heroku servers:

```
git push heroku master
```

Open Heroku app in browser:

```
heroku open
```

Or go directly via http://APP_NAME.herokuapp.com

View/stream server logs:

```
heroku logs --tail
```
