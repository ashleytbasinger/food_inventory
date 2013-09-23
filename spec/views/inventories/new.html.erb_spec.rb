require 'spec_helper'

describe "inventories/new" do
  before(:each) do
    assign(:inventory, stub_model(Inventory,
      :title => "MyString",
      :description => "MyString",
      :quantity => 1
    ).as_new_record)
  end

  it "renders new inventory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inventories_path, "post" do
      assert_select "input#inventory_title[name=?]", "inventory[title]"
      assert_select "input#inventory_description[name=?]", "inventory[description]"
      assert_select "input#inventory_quantity[name=?]", "inventory[quantity]"
    end
  end
end
