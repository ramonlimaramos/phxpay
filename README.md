# Phxpay

## Requirements
 * Make sure you have elixir installed, for more information check it out:<br/>
[Installing Elixir](https://elixir-lang.org/install.html)
 * Make sure you have docker installed, for more information check it out:<br/>
[Installing Docker](https://docs.docker.com/get-docker/)

## Running locally
To start your Phxpay server:

  * Bring up the database with `docker-compose up -d -V postgres`
  * Accomplish database setup and migration `mix ecto.setup`
  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Endpoints

[..to-do..]

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
