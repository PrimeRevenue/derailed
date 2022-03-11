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

FactoryBot.define do
  factory :chuck_norris_facts, :class => 'ChuckNorrisFact' do |f|
    fact { Faker::ChuckNorris.fact }
    karatepower { Faker::Number.between(from: 8, to: 10) }
  end
end
