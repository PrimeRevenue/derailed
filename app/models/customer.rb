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

class Customer < ActiveRecord::Base
  has_many :bank_accounts

  instance_eval do
    BankAccount::TYPES.each do |type|
      define_method "#{type}_account" do
        bank_accounts.where(account_type: type).first
      end
    end
  end

  def transfer_to_savings!
  end

  def can_auto_save?
    checking_account.has_minimum_balance?
  end
end
