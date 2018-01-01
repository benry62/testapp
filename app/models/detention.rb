class Detention < ApplicationRecord
  belongs_to :user
  belongs_to :student

  #before_save   :modify_date_params

  #attr_accessor :ro


  def is_completed(params)
    if params[:completed]
      if params[:completed] == "0"
        params.except[:date_completed]
      end
    else
      params
    end
  end

  def student_name
    student.try(:last_name)
  end

  def student_name=(name)
    self.category = Student.find_by(last_name: name) if name.present?
  end

  def not_weekend
    1.day.from_now.on_weekday? ? 1.day.from_now : Date.today + ((1 - Date.today.wday) % 7)
  end

  def rollover(detention_params)
    next_date = self.date_due + 1.day
    if next_date.on_weekday?
      detention_params[:date_due] = next_date
    else
      detention_params[:date_due] = Date.today + ((1 - Date.today.wday) % 7)
    end
    detention_params
  end

  def modify_date_params

  end




end
