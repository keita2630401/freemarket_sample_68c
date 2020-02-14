FactoryBot.define do

  factory :item do
    name                  {"hoge"}
    description           {"hogehoge"}
    condition             {"新品、未使用"}
    shipping_cost_side    {"送料込み(出品者負担)"}
    origin_area           {"北海道"}
    shipping_days         {"1~2日で発送"}
    price                 {100}
  end

end
