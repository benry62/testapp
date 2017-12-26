class Year < ApplicationRecord

  belongs_to :school
  has_many :forms

  validates :name, presence: true
  validates :name, uniqueness: true
end
