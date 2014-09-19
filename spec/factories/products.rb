# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product, class: Product do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    price { Faker::Commerce.price }
  end
end
