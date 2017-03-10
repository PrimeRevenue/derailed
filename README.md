# Derailed

A bare-bones Rails 4 project for hands-on technical interviews. Opinionated in the gems and setup to be focused on business problems rather than boilerplate and/or seutp.

## Project Overview, Basics

* SQLite3 for DB
* RSpec for testing
* Supports standard views (ERB) and JSON reponses (responders gem)
* Single REST resource setup for just GET with JSON reponse
* Single model and basic seed to get started.

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



## Challenge installation

Problems, challenges are installed using Bundler and a secret gist.

```
gem 'name_of_gem', git:  'git://gist.github.com/<user>/<this ID>.git'
```


