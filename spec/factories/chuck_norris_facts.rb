# == Schema Information
#
# Table name: chuck_norris_facts
#
#  id          :integer          not null, primary key
#  fact        :string
#  karatepower :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :chuck_norris_facts, :class => 'ChuckNorrisFact' do |f|
    fact { Faker::ChuckNorris.fact }
    karatepower { Faker::Number.between(8, 10) }
  end
end
