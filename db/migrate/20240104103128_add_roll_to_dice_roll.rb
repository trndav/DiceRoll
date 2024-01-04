class AddRollToDiceRoll < ActiveRecord::Migration[7.1]
  def change
    add_reference :dice_rolls, :roll, null: false, foreign_key: true
  end
end
