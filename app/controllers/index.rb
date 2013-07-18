# ----- INDEX -----

get '/' do
  @posts = Post.all
  @message = "hi from controller"
  erb :index
end

# ----- POSTS -----

get '/new' do
  # @post = Post.create(params[:id])
  # @message = "this is our individual post page"
  erb :new
end

get '/post/:id' do
  @post = Post.find(params[:id])
  @message = "this is our individual post page"
  erb :show
end

get '/post/:id/edit' do
  # @post = Post.find(params[:id])
  @message = "this is our individual edit page"
  erb :edit
end

post '/' do
   @post = Post.create(params[:post])
  @message = "this is our individual new post page"
  erb :show
end

post '/post/:id/edit' do
  @post = Post.find(params[:id])
  @post.update_attributes(params[:form])
  @message = "this is our individual edit page"
  erb :edit
end

post '/post/:id/delete' do
  # @post = Post.destroy(params[:id])
  redirect to '/'
end

# ----- TAGS -----
