require 'rails_helper'

RSpec.describe "smart_trippers/show", type: :view do
  before(:each) do
    @smart_tripper = assign(:smart_tripper, SmartTripper.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
