class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end
  def create
    @profile = Profile.new(params_profile)
    if @profile.save
      redirect_to  main_goal_path(current_user.id)
    else
      render :new
    end 
  end
  def edit
  end
  def update
  end
  private
  def params_profile
    params.require(:profile).permit(:name, :image, :life_goal, :life_goal_explanation, :profile).merge(user_id: current_user.id)
  end
end
