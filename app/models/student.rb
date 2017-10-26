class Student < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness:  {scope: :school_id, message: "already exists"}

  belongs_to :school

end
