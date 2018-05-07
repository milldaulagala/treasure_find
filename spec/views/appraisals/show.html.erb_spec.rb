require 'rails_helper'

RSpec.describe "appraisals/show", type: :view do
  before(:each) do
    @appraisal = assign(:appraisal, Appraisal.create!(
      :content => "MyText",
      :value => "9.99",
      :user => nil,
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
