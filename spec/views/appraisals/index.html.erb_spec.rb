require 'rails_helper'

RSpec.describe "appraisals/index", type: :view do
  before(:each) do
    assign(:appraisals, [
      Appraisal.create!(
        :content => "MyText",
        :value => "9.99",
        :user => nil,
        :item => nil
      ),
      Appraisal.create!(
        :content => "MyText",
        :value => "9.99",
        :user => nil,
        :item => nil
      )
    ])
  end

  it "renders a list of appraisals" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
