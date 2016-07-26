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

  factory :user_3, class: User do
    first_name ""
    last_name  "Doe"
    email "janesmith@gmail.com"
    password "password"
  end

  factory :user_4, class: User do
    first_name "Jane"
    last_name  ""
    email "janesmith@gmail.com"
    password "password"
  end

  factory :user_5, class: User do
    first_name "Jane"
    last_name  "Doe"
    email ""
    password "password"
  end

  factory :user_6, class: User do
    first_name "Jane"
    last_name  "Doe"
    email "janesmith@gmail.com"
    password ""
  end
end
