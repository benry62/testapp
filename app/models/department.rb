class Department < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness:  {scope: :school_id, message: "of Department must be unique"}

  belongs_to :school
  has_many :teachers
  accepts_nested_attributes_for :teachers
  accepts_nested_attributes_for :school



end
