class PostimagesController < ApplicationController
  def new
    @post_image = Post_image.new
  end

  def create
   @post_image = Post_image.new(postimage_params)
   @post_image.user_id = current_user.id
   @post_image.save
   redirect_to post_images_path
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
end
