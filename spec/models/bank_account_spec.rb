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

require 'rails_helper'

RSpec.describe BankAccount, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
