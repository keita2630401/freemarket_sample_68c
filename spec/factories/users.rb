FactoryBot.define do

  factory :user do
    nickname              {"hoge"}
    family_name           {"hoge"}
    first_name            {"hoge"}
    family_name_kana      {"hoge"}
    first_name_kana       {"hoge"}
    birthday              {"hoge"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end

end