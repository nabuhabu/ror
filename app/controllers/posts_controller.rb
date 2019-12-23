class PostsController < ApplicationController
# http_basic_authenticate_with name: "admin", password: "1",
# except: [:index, :show]
before_action :authenticate_user!, except: [:index, :show]

  def index
    @post = Post.all
  end

  def new
    # @post = Post.new
    @post = current_user.posts.build
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if(@post.update(post_params))                  #save in the table when validated
    redirect_to @post
    else
    render 'edit' #if title not validated
  end
  end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
end

  def create

    @post = current_user.posts.build(post_params) #write to the create_table

  respond_to do |format|
     if @post.save
       format.html { redirect_to @post, notice: 'Success'}
     else
       format.html { render :new}
  end
end
end

  private def post_params
    params.require(:post).permit(:title, :body, :price) #take allowed data
  end

end
