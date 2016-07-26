FactoryGirl.define do
  factory :comment_1, class: Comment do
    body "hello"
  end

  factory :comment_2, class: Comment do
    body ""
  end
end
