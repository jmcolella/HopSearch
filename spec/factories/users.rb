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
end
