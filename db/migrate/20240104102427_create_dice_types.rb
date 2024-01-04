class CreateDiceTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :dice_types do |t|
      t.string :name
      t.integer :sides
      t.integer :position

      t.timestamps
    end
  end
end
