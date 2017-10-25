class School < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :departments
  accepts_nested_attributes_for :departments


  def find_teachers
    id_list = Array.new
    Department.where(school_id: self.id).each do |d|
        id_list << d.id
    end
    Teacher.where(department_id: id_list)
  end


end
