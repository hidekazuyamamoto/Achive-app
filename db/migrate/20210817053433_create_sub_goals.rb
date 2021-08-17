class CreateSubGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_goals do |t|

      t.timestamps
      t.string :sub_goal, nill: false
      t.date :dead_line
      t.references :user, nill:false, foreign_key: true
      t.references :main_goal, nill:false, foreign_key: true
    end
  end
end
