class Hold < ApplicationRecord
  belongs_to :board
  has_and_belongs_to_many :problems
end
