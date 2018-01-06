class Student < ApplicationRecord
  validates :fore_name, presence: true
  validates :last_name, presence: true
  validates :fore_name, :uniqueness => { :scope => :last_name }
  validates :last_name, :uniqueness => { :scope => :fore_name }

  belongs_to :form
  has_many :detentions


  def full_name
    "#{fore_name} #{last_name}"
  end

  def detention_count(id)
    Detention.where("student_id = ?", id).count
  end



end
