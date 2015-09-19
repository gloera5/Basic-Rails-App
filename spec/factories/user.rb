FactoryGirl.define do
   factory :user do
     name "Douglas Adams"
     sequence(:email, 100) { |n| "person#{n}@example.com" }
     password "helloworld"
     password_confirmation "helloworld"
     confirmed_at Time.now
   end
  
   factory :user_with_post_and_comment, parent: :user do
     association :title, factory: :post
     association :body, factory: :post
     association :topic, factory: :post
     association :body, factory: :comment
     
     after(:build) { |post| post.class.skip_callback(:create) }
     after(:build) { |comment| comment.class.skip_callback(:create) }
   end
end