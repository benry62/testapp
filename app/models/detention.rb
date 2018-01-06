class Detention < ApplicationRecord
  belongs_to :user
  belongs_to :student

  has_many :versions
  validate :due_date_cant_be_before_set_date



  def due_date_cant_be_before_set_date
    if date_set.present? && date_due.present? && date_due < date_set
      errors.add(:date_due, "can't be before the date set")
    end
  end

  def is_completed(params)
    if params[:completed]
      if params[:completed] == "0"
        params.except[:date_completed]
      end
    else
      params
    end
  end

  def is_overdue
    return (self.date_due < Date.today && !(self.completed))? true : false
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

  def is_escalated(params)
    debugger
    if params[:detention][:escalate]
      if params[:detention][:escalate] == "1"
        return [params.except[:detention][:escalate], true]
      end
    else
      return [params, false]
    end
  end






end
