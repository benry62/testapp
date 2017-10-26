class School < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :departments
  has_many :teachers
  accepts_nested_attributes_for :departments, :teachers





end
