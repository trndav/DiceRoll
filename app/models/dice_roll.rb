class DiceRoll < ApplicationRecord
  belongs_to :user
  belongs_to :dice_type
end
