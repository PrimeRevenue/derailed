require 'faker'
require 'securerandom'

100.times do |n|
  ChuckNorrisFact.create(fact: Faker::ChuckNorris.fact, karatepower: Faker::Number.between(8, 10), created_at: n.days.ago)
end

