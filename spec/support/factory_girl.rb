require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :restaurant do
    name "Pho King Good"
    address "33 Harrison Ave"
    city "Boston"
    state "MA"
    zipcode "11111"
   end
end
