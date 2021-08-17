class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|

      t.timestamps
      t.references :user, nill: false, foreign_key: true
      t.text :profile
      t.string :life_goal
      t.text :life_goal_explanation
    end
  end
end
