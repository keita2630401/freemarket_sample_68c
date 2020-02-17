FactoryBot.define do

  factory :item do
    name                  {"hoge"}
    description           {"hogehoge"}
    condition_id          {1}
    ShippingCostSide_id   {1}
    OriginArea_id          {1}
    ShippingDays_id        {1}
    price                 {100}
  end

end
