require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "Name",
        :description => "MyText",
        :condition => "MyText",
        :manufacture => "MyText",
        :manufacture_date => "MyText",
        :image_data => "MyText",
        :dimension => "MyText",
        :weight => "9.99",
        :user => nil
      ),
      Item.create!(
        :name => "Name",
        :description => "MyText",
        :condition => "MyText",
        :manufacture => "MyText",
        :manufacture_date => "MyText",
        :image_data => "MyText",
        :dimension => "MyText",
        :weight => "9.99",
        :user => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
