class Form < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true


  has_many :students



end
