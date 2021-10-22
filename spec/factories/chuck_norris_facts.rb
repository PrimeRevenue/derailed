FactoryGirl.define do
  factory :chuck_norris_facts, :class => 'ChuckNorrisFact' do |f|
    fact { Faker::ChuckNorris.fact }
    karatepower { Faker::Number.between(8, 10) }
  end
end
