class Teacher < ApplicationRecord
  validates :name, presence: true

  belongs_to :department
  belongs_to :school
  belongs_to :role

  has_many :detentions

  accepts_nested_attributes_for :department, :school

end
