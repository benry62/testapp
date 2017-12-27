class Year < ApplicationRecord

  belongs_to :school
  has_many :forms
  accepts_nested_attributes_for :school


  validates :name, presence: true
  validates :name, uniqueness: true
end
