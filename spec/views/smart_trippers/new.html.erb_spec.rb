require 'rails_helper'

RSpec.describe "smart_trippers/new", type: :view do
  before(:each) do
    assign(:smart_tripper, SmartTripper.new())
  end

  it "renders new smart_tripper form" do
    render

    assert_select "form[action=?][method=?]", smart_trippers_path, "post" do
    end
  end
end
