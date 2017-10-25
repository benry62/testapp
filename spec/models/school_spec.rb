require 'rails_helper'

RSpec.describe School, type: :model do
  it "has a valid factory" do
    expect(school).to be_valid
  end
end
