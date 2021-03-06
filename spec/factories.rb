FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "Person_#{n}@example.com" }
    password "asdfasdf"
    password_confirmation "asdfasdf"

    factory :admin do
      admin true
    end

  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end
