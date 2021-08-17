class MainGoalsController < ApplicationController
  def index
  end
  def new
    @main_goal = MainGoal.new
  end
  def create
    @main_goal = MainGoal.new(main_goal_params)
    if @main_goal.save
      redirect_to root_path
    else
      render :new
    end
  end
  private
  def main_goal_params
    params.require(:main_goal).permit(:main_goal, :explnation, :dead_line).merge(user_id: current_user.id)
  end 
end
