require 'spec_helper'

describe "inventories/edit" do
  before(:each) do
    @inventory = assign(:inventory, stub_model(Inventory,
      :title => "MyString",
      :description => "MyString",
      :quantity => 1
    ))
  end

  it "renders the edit inventory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inventory_path(@inventory), "post" do
      assert_select "input#inventory_title[name=?]", "inventory[title]"
      assert_select "input#inventory_description[name=?]", "inventory[description]"
      assert_select "input#inventory_quantity[name=?]", "inventory[quantity]"
    end
  end
end
