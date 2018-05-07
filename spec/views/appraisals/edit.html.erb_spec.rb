require 'rails_helper'

RSpec.describe "appraisals/edit", type: :view do
  before(:each) do
    @appraisal = assign(:appraisal, Appraisal.create!(
      :content => "MyText",
      :value => "9.99",
      :user => nil,
      :item => nil
    ))
  end

  it "renders the edit appraisal form" do
    render

    assert_select "form[action=?][method=?]", appraisal_path(@appraisal), "post" do

      assert_select "textarea[name=?]", "appraisal[content]"

      assert_select "input[name=?]", "appraisal[value]"

      assert_select "input[name=?]", "appraisal[user_id]"

      assert_select "input[name=?]", "appraisal[item_id]"
    end
  end
end
