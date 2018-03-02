# Derailed

A bare-bones Rails 4 project for hands-on technical interviews. Opinionated in the gems and setup to be focused on business problems rather than boilerplate and/or seutp.

![Derailed](./train-wreck.jpg)

## Project Overview, Basics

* SQLite3 for DB
* RSpec for testing
* Supports standard views (Slim) and JSON reponses (responders gem)
* Single REST resource setup for just GET with JSON reponse
* Single model and basic seed to get started.
* Boostrap 4 Rails


## Gems installed for use

* FactoryGirl for factories if necc.
* Database cleaner to cleanup after tests
* Faker for making quick fake data/models
* Pry for object inspection and debugging
* Timecop for time based testing

## Setup

* Checkout this code.
* ` bundle `
* db create, migrate, seed
* `bundle exec rspec`

## Test

Open 'http://localhost:3000/' on your browser and a simple web page with 'Chuck's Dashboard' should appear.


## Challenge installation

In some cases, challenges are installed using Bundler and a secret gist or copy/paste from a gist.

```
gem 'name_of_gem', git:  'https://gist.github.com/<user>/<this ID>.git'
```

## Manual fact generation

Using the Faker gem.

```
require 'csv'
CSV.open("/tmp/chuck_norris_facts.csv", "wb") do |csv|
  csv << ["fact"]
  100.times do
    csv << [Faker::ChuckNorris.fact]
  end
end

```

