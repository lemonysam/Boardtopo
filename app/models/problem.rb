class Problem < ApplicationRecord
  belongs_to :board
  has_and_belongs_to_many :holds

end
