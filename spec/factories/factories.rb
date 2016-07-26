FactoryGirl.define do
  factory :user_1, class: User do
    first_name "John"
    last_name  "Doe"
    email "jsmith@gmail.com"
    password "password"
  end

  factory :user_2, class: User do
    first_name "Jane"
    last_name  "Doe"
    email "janesmith@gmail.com"
    password "password"
  end

  factory :hop, class: Hop do
    name "Galaxy"
  end

  factory :comment, class: Comment do
    body "hello"
  end

  factory :favorite, class: Favorite do
    association :user, factory: :user_2
    association :hop, factory: :hop
  end
end