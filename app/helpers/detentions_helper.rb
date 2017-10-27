module DetentionsHelper

  def build_date(params)
    date_sql_string = date_set["year"].to_s + "-" + date_set["month"].to_s + "-" + date_set["day"].to_s
  end

end
