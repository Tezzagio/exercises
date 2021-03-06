class StoriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @stories = params[:q] ? Story.search_for(params[:q]) : Story.all
  end

  def show
    @story = Story.find params[:id]
  end

  def new
<<<<<<< HEAD
    @story = Story.new user_id: current_user.id
=======
>>>>>>> 53e812dcc84eab8ace208cc5df5c48eaed389de9
    @story = current_user.stories.new
  end

  def create
    safe_story_params = params.require(:story).permit(:title, :link, :category)
    @story = current_user.stories.new safe_story_params.merge(:upvotes => 1)

    if @story.save
      redirect_to @story
    else
      render :new
    end
  end
end
