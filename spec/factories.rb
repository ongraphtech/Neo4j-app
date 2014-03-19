FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "test_user#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
    remember_token SecureRandom.urlsafe_base64

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end
