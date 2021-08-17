class MainGoalsController < ApplicationController
  before_action :main_goal_set, only: [:edit, :update, :destroy]
  def index
    @main_goal = MainGoal.where(user_id: current_user.id)
    @sub_goal = SubGoal.where(main_goal: @main_goal.ids)
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
    @sub_goal = SubGoal.where(main_goal: @main_goal.ids)
  end
  def edit
  end
  def update
    if @main_goal.update(main_goal_params)
      redirect_to main_goal_path(current_user.id)
    else
      render :edit
    end
  end
  def destroy
    @main_goal.destroy
    redirect_to main_goal_path(current_user.id)
  end
  private
  def main_goal_params
    params.require(:main_goal).permit(:main_goal, :explnation, :dead_line).merge(user_id: current_user.id)
  end 
  def main_goal_set
    @main_goal = MainGoal.find(params[:id])
  end
end
