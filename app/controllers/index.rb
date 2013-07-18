# ----- INDEX -----

get '/' do
  # @posts = Post.all
  @message = "hi from controller"
  erb :index
end

# ----- POSTS -----

# get '/*' do
#   @message = 'greedy routes!'
#   erb :show
# end

get '/post/:id' do
  # @post = Post.find(params[:id])
  @message = "this is our individual post page"
  erb :show
end

get '/post/:id/edit' do
  # @post = Post.find(params[:id])
  @message = "this is our individual edit page"
  erb :edit
end

post '/post/:id/edit' do
  # @post = Post.find(params[:id])
  # @post.update_attributes(params[:form])
  @message = "this is our individual edit page"
  erb :show
end

post '/post/:id/delete' do
  # @post = Post.destroy(params[:id])
  redirect to '/'
end

# ----- TAGS -----
