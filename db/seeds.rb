5.times do |i|
  Post.create(post_title: "how to surf", post_author: "you", post_body: "paddle hard")
end

5.times do |i|
  Tag.create(tag_name: "barreled")
end
