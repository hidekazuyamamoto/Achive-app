class MainGoalsController < ApplicationController
  def index
  end
  def new
    @main_goal = MainGoal.new
  end
end
