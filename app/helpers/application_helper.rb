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

end
