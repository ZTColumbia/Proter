FactoryBot.define do
  factory :user do
    email {"Bob@gmail.com"}
    password {"bobalice"}
    first_name {"Alice"}
    last_name {"Bob"}
    city {"New York"}
    address {"100 W, 100 ST"}
    card_number {"1111 1111 1111 1111"}
    card_cvv {"111"}
    card_expired_date {"2021.11.4"}
  end
end