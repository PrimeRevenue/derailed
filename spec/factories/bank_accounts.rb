# == Schema Information
#
# Table name: bank_accounts
#
#  id           :integer          not null, primary key
#  account_type :string
#  balance      :float
#  customer_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :bank_account do
    type { "" }
    balance { 1.5 }
    customer_id { 1 }
  end
end
