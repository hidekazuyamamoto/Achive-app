class MainGoalsController < ApplicationController
  def index
    @main_goal = MainGoal.where(user_id: current_user.id)
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
  def show
    @main_goal = MainGoal.where(user_id: params[:id])
  end
  def edit
    @main_goal = MainGoal.find(params[:id])
  end
  def update
    if MainGoal.update(main_goal_params)
      redirect_to  main_goal_path(current_user.id)
    else
      render :edit
    end
  end
  private
  def main_goal_params
    params.require(:main_goal).permit(:main_goal, :explnation, :dead_line).merge(user_id: current_user.id)
  end 
end
