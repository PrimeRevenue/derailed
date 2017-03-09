require 'faker'
require 'securerandom'

100.times do 
  ChuckNorrisFact.create(fact: Faker::ChuckNorris.fact, karatepower: Faker::Number.between(8, 10))
end

