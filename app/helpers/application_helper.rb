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

  def next_higher(k, dt)
    time = dt[k]
    sorted = dt.sort_by {|_,time| time }
    next_val = sorted.find(sorted.method(:first)) { |_,t| t >time }.first
    k == sorted.last.first ? k : next_val
  end




end
