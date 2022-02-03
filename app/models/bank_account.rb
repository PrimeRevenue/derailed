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

# rubocop:disable all

class BankAccount < ActiveRecord::Base
  belongs_to :customer

  TYPES = %w(checking savings).freeze
  validates :account_type, inclusion: { in: TYPES }

  MIN_BALANCE = 10000.00 #all users are rich
  SAVINGS_PERCENT = 0.025
end
