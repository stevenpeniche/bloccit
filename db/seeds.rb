require 'random_data'

 # Create Posts
50.times do
 Post.create!(
   title:  RandomData.random_sentence,
   body:   RandomData.random_paragraph
 )
end
posts = Post.all

# Create Comments
100.times do
 Comment.create!(
   post: posts.sample,
   body: RandomData.random_paragraph
 )
end
comments = Comment.all

# If Post doesn't exist, this creates it
posts.find_or_create_by(id: 51, title: "A Unique Post", body: "A Unique Post Body")

# If Post Comment doesn't exist, this creates it
comments.find_or_create_by(post_id: 51, body: "A Unique Post Comment")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
