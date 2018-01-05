module ApplicationHelper

  def human_boolean(boolean)
    boolean ? 'Yes' : 'No'
  end

  def school_name
    f = YAML.load_file("config/school_config.yml")
    f["name"]
  end

  def d_types
    f = YAML.load_file("config/school_config.yml")
    f["detention_types"]
  end

  def years
    f = YAML.load_file("config/school_config.yml")
    f["years"]
  end

  def next_higher(k, dt)
    time = dt[k]
    sorted = dt.sort_by {|_,time| time }
    next_val = sorted.find(sorted.method(:first)) { |_,t| t >time }.first
    k == sorted.last.first ? k : next_val
  end

  def flash_class(level)
      case level
      when "notice" then "alert alert-info"
      when "success" then "alert alert-success"
      when "error" then "alert alert-error"
      when "alert" then "alert alert-error"
      end
  end

  def d_types_keys
    val = ''
    d_types.each do |key, value|
      val = val + "," + key
    end
    val.slice!(0)  #strips off the first comma
    val
  end

end
