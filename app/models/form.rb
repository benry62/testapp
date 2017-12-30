class Form < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :year_id, presence: true

  belongs_to :year
  has_many :students



end
