class Detention < ApplicationRecord
  belongs_to :user
  belongs_to :student



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

  def rollover
    puts "self.date_due = " + self.date_due.strftime("%a %-d %b %y")
    next_date = self.date_due + 1.day
    puts "next_date = " + next_date.strftime("%a %-d %b %y")

    if next_date.on_weekday?
      puts "true"
      self.date_due = next_date
      puts "self.date_due = " + self.date_due.strftime("%a %-d %b %y")
    else
      puts "fale"

      self.date_due = Date.today + ((1 - Date.today.wday) % 7)
      puts "self.date_due = " + self.date_due.strftime("%a %-d %b %y")

    end
    self.save
  end

end
