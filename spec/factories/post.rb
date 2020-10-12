FactoryBot.define do
  factory :post do
    title { UUID.new }
    body { UUID.new }
    author { "Sandy Metz" }
    association :user, factory: :user
  end
end