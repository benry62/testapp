class Detention < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  belongs_to :detention_type



def find_teachers
  @teachers = Teacher.where(:school_id => @school.id)

end


end
