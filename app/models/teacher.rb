class Teacher < ApplicationRecord
  validates :name, presence: true

  belongs_to :department
end
