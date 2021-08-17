class SubGoalsController < ApplicationController
  def new
    @sub_goal =SubGoal.new
  end
  def create
    binding.pry
    @sub_goal =SubGoal.new(params_sub_goal)
    if @sub_goal.save
      redirect_to main_goal_path(current_user.id)
    else
      render :new
    end
  end
  private
  def params_sub_goal
    params.require(:sub_goal).permit(:sub_goal, :dead_line).merge(user_id: current_user.id, main_goal_id: params[:main_goal_id])
  end
end
