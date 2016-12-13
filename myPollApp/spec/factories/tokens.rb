FactoryGirl.define do
  factory :token do
    expires_at "2016-12-12 19:34:35"
    # user nil
    # token "MyString"
    association :user, factory: :user
  end
end
