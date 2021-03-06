require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :description => "MyText",
      :condition => "MyText",
      :manufacture => "MyText",
      :manufacture_date => "MyText",
      :image_data => "MyText",
      :dimension => "MyText",
      :weight => "9.99",
      :user => nil
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "textarea[name=?]", "item[description]"

      assert_select "textarea[name=?]", "item[condition]"

      assert_select "textarea[name=?]", "item[manufacture]"

      assert_select "textarea[name=?]", "item[manufacture_date]"

      assert_select "textarea[name=?]", "item[image_data]"

      assert_select "textarea[name=?]", "item[dimension]"

      assert_select "input[name=?]", "item[weight]"

      assert_select "input[name=?]", "item[user_id]"
    end
  end
end
