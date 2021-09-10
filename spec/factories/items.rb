FactoryBot.define do
  factory :item do
    name             {"商品1"}
    explanation      {"この商品はとても素晴らしいです"}
    category_id      {2}
    status_id        {2}
    shipping_cost_id {2}
    shipping_area_id {2}
    shipping_day_id  {2}
    price            {10000 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
