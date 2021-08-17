class SubGoalsController < ApplicationController
  def new
    @sub_goal =SubGoal.new
  end
end
