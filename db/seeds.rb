 require 'faker'
 
 # Create Posts
 50.times do
   Post.create!(
<<<<<<< HEAD
     title:  Faker::Lorem.sentence + " A New Title",
     body:   Faker::Lorem.paragraph + " A new sentence."
=======
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
>>>>>>> checkpoint-26-SeedData
   )
 end
 posts = Post.all
 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
<<<<<<< HEAD
     body: Faker::Lorem.paragraph + " A new comment."
=======
     body: Faker::Lorem.paragraph
>>>>>>> checkpoint-26-SeedData
   )
 end
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"