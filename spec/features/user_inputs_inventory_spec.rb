require 'spec_helper'

feature "user adds to inventory", %Q{
  As a food service employee
  I want to receive inventory
  So that it can be recorded that we have food items
} do
  # Acceptance Criteria

  # * I must specify a title, description, and quantity of the food item
  # * If I do not specify the required information, I am prompted to fix errors and to resubmit
  # * If I specify the required information, my inventory entry is recorded.
  scenario 'specifies required information, entry recorded' do
    visit '/'
    fill_in 'Title', with: 'blueberries'
    fill_in 'Description', with: 'delicious berries'
    fill_in 'Quantity', with: 2
    click_button 'Submit'
    expect(page).to have_content('Submitted successfully')
  end
end