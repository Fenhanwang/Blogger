require 'rails_helper'

RSpec.describe "smart_trippers/index", type: :view do
  before(:each) do
    assign(:smart_trippers, [
      SmartTripper.create!(),
      SmartTripper.create!()
    ])
  end

  it "renders a list of smart_trippers" do
    render
  end
end
