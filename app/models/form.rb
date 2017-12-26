class Form < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :year, presence: true

  belongs_to :school
  has_many :students

  def self.grouped_by_year(year, school_id)
    groups = []
    for year in 7..13
      Form.where(year: year, school_id: school_id).distinct(:name).each_with_index do |name, index|
        groups << [name, Form.where(year: year, name: name)]
      end
    end

    return groups
  end


end
