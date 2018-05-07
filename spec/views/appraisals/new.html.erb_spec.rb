require 'rails_helper'

RSpec.describe "appraisals/new", type: :view do
  before(:each) do
    assign(:appraisal, Appraisal.new(
      :content => "MyText",
      :value => "9.99",
      :user => nil,
      :item => nil
    ))
  end

  it "renders new appraisal form" do
    render

    assert_select "form[action=?][method=?]", appraisals_path, "post" do

      assert_select "textarea[name=?]", "appraisal[content]"

      assert_select "input[name=?]", "appraisal[value]"

      assert_select "input[name=?]", "appraisal[user_id]"

      assert_select "input[name=?]", "appraisal[item_id]"
    end
  end
end
