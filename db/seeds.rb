require "faker"
require "securerandom"

100.times do |n|
  ChuckNorrisFact.create(fact: Faker::ChuckNorris.fact, karatepower: Faker::Number.between(from: 8, to: 10), created_at: n.days.ago)
end

100.times do |n|
  customer = Customer.create(
    fname: Faker::Name.first_name,
    lname: Faker::Name.last_name,
  )

  checking_balance = BankAccount::MIN_BALANCE + Faker::Number.between(from: 250.0, to: 1000.0)
  savings_balance = BankAccount::MIN_BALANCE + Faker::Number.between(from: 250.0, to: 1000.0)

  BankAccount.create(account_type: "checking", balance: checking_balance, customer_id: customer.id)
  BankAccount.create(account_type: "savings", balance: savings_balance, customer_id: customer.id)
end
