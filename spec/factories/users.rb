FactoryBot.define do
  factory :user do
    nickname              {"shiki"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    first_name            {"yuki"}
    last_name             {"sato"}
    first_name_rattle     {"yukirrr"}
    last_name_rattle      {"saaaa"}
    birthyear             {"12"}
    birthmonth            {"12"}
    birthday              {"123"}
  end
end