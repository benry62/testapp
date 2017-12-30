class Year < ApplicationRecord

  has_many :forms


  validates :name, presence: true
  validates :name, uniqueness: true
end
