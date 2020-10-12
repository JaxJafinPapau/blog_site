FactoryBot.define do
  factory :user do
    email { "#{UUID.new}@rails.com" }
    password { "password" }
  end
end