FactoryBot.define do
  factory :adress do
    post_number { 1 }
    prefecture { "MyString" }
    municipality { "MyString" }
    town { "MyString" }
    building { "MyString" }
    user_id { 1 }
  end
end
