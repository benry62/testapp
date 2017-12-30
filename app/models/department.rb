class Department < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness:  true

  has_many :users
  accepts_nested_attributes_for :users



end
