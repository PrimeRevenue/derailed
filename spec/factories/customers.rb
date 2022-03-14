# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  fname      :string
#  lname      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :customer do
    fname { "MyString" }
    lname { "MyString" }
  end

end
