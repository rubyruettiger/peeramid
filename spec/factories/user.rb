FactoryGirl.define do
  factory :user do
    sequence(:first_name)  { |n| "John#{n}" }
    sequence(:last_name)  { |n| "Smith#{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobarrrrrrrrr"
    password_confirmation "foobarrrrrrrrr"

    factory :admin do
      admin true
    end
  end
end