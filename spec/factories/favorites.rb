FactoryGirl.define do
  factory :favorite, class: Favorite do
    association :user, factory: :user_2
    association :hop, factory: :hop
  end
end
