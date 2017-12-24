class Form < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :year, presence: true

  belongs_to :school
  has_many :students
end
