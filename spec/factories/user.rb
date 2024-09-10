FactoryBot.define do
  factory :user do
    nickname { FFaker::Lorem.word }
    level { FFaker::Random.rand(1..99) }
    kind { %w[knight wizard].sample }
    email { 'test@example.com' }
    password { "password123" }
    password_confirmation { 'password123' }
  end
end
