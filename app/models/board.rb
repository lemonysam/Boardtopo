class Board < ApplicationRecord
  validates :name, presence: true, length: { minimum:5 }
  validates :imageUrl, presence: true, length: { minimum:5 }
  has_many :holds, dependent: :destroy

end
