class Department < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness:  {scope: :school_id, message: "Departments must be unique"}

  belongs_to :school
end
