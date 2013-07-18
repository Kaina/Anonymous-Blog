# ----- INDEX -----

get '/' do
  @posts = Post.all
  @message = "hi from controller"
  erb :index
end

# ----- POSTS -----



# ----- TAGS -----
