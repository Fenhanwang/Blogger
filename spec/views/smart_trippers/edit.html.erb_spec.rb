require 'rails_helper'

RSpec.describe "smart_trippers/edit", type: :view do
  before(:each) do
    @smart_tripper = assign(:smart_tripper, SmartTripper.create!())
  end

  it "renders the edit smart_tripper form" do
    render

    assert_select "form[action=?][method=?]", smart_tripper_path(@smart_tripper), "post" do
    end
  end
end
