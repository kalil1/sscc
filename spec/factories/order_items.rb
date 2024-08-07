FactoryBot.define do
  factory :order_item do
    quantity { "MyString" }
    product { nil }
    order { nil }
  end
end
