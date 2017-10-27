class Detention < ApplicationRecord
  belongs_to :user
  belongs_to :student
  belongs_to :school
  belongs_to :detention_type



def find_users
  @users = User.where(:school_id => @school.id)

end


end
