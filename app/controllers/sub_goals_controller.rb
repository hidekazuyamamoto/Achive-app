class SubGoalsController < ApplicationController
  def new
    @sub_goal =SubGoal.new
  end
  def create
    @sub_goal =SubGoal.new(params_sub_goal)
    if @sub_goal.save
      redirect_to main_goal_path(current_user.id)
    else
      render :new
    end
  end
  def edit
    @main_goal = MainGoal.find(params[:main_goal_id])
    @sub_goal = SubGoal.find(params[:id])
  end
  def update
    @main_goal = MainGoal.find(params[:main_goal_id])
    @sub_goal = SubGoal.find(params[:id])
    if @sub_goal.update(params_sub_goal)
      redirect_to main_goal_path(current_user.id)
    else
      render :edit
    end
  end
  def destroy
    @main_goal = MainGoal.find(params[:main_goal_id])
    @sub_goal = SubGoal.find(params[:id])
    @sub_goal.destroy
    redirect_to main_goal_path(current_user.id)
  end
  private
  def params_sub_goal
    params.require(:sub_goal).permit(:sub_goal, :dead_line).merge(user_id: current_user.id, main_goal_id: params[:main_goal_id])
  end
end
