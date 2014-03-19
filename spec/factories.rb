FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "test_user#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
    remember_token SecureRandom.urlsafe_base64
    confirmation_token User.hash(User.new_random_token)
    confirmation_sent_at Time.now.utc

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end
