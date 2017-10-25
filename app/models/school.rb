class School < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :departments

end
