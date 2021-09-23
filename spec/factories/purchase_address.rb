FactoryBot.define do
  factory :purchase_address do
    post_code        {"123-4567"}
    shipping_area_id {2}
    city             {"品川区"}
    address          {"小山"}
    building_name    {"フリマハイツ"}
    phone            {"08057867864"}
    token            {"tok_abcdefghijk00000000000000000"}
  end
end