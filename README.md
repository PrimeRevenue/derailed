# Derailed

A bare-bones Rails 4 project for hands-on technical interviews. Opinionated in the gems and configuration to be focused on business problems rather than boilerplate and/or setup.

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


## Codeanywhere pre-setup steps (for PrimeRevenue devs)

```
rvm install 2.5.5
source ~/.rvm/scripts/rvm
rvm use 2.5.5
```

## Setup

* Checkout this code.
* ` bundle `
* db create, migrate, seed
* `bundle exec rspec`


## Test/Run app

```
bundle exec rails s
```

Open 'http://localhost:3000/' on your browser and a simple web page with 'Chuck's Dashboard' should appear.


## Manual fact generation (if needed)

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

# What next?

The PrimeRevenue TEAM will pair with you and have you implement a feature on this simple API.


## Vue

We have created a simple Vue app, which we would like you to make some changes to.  You will be working in the following files:

* `/public/vue-app.js`
* `/public/vue.html`

Navigate in your browser to: 'http://localhost:3000/vue.html' in order to see the Vue app.

When the user clicks the button, the app should fetch a random quote from the API, and display it just below the button.

You may use any library you wish to perform the api call: `axios`, `fetch`, etc.  Feel free to google at will.

### Requirements:
* Button is clicked, a fact displays.
* Subsequent clicks keep adding facts to the list.

### Bonus Points:
* No duplicate facts are ever displayed.
* Make each fact look like a social media post, displaying some of the other fields which are returned by the API
* Add an X to each fact, which will remove the fact from the list when clicked

### Note: 
*As Vue will be more of a minor focus for your position, just get as much done as you can in the time alloted to you by the interviewer.  It is okay if you do not finish everything.*

