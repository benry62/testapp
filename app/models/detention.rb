class Detention < ApplicationRecord
  belongs_to :user
  belongs_to :student
  belongs_to :school
  belongs_to :detention_type



  def is_completed(params)
    if params[:completed]
      if params[:completed] == "0"
        params.except[:date_completed]
      end
    else
      params
    end
  end


end
