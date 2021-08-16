class MainGoal < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :main_goal
  end
end
