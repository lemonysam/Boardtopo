class Problem < ApplicationRecord
  belongs_to :Board
  has_many :Holds, through: :problemHolds

end
