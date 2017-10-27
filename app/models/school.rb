class School < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :departments
  has_many :detentions
  has_many :users
  has_many :students
  accepts_nested_attributes_for :departments, :users





end
