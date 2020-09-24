require 'rails_helper'

RSpec.describe User, type: :model do
  it "should work" do
    expect(User.first.name).to eql("Customer #1")
  end
end
