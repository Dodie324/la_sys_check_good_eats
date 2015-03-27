require 'rails_helper'

feature 'visitor views restaurants', %Q{
  As a visitor
  I want to view recently posted restaurants
  So that I can see where to eat
# } do
#   Acceptance Criteria

# - I must see the name, address, city, state, zipcode of each restaurant
  scenario 'visitor views recently posted restaurants' do
    restaurants = FactoryGirl.create(:restaurant)
    visit root_path
    expect(page).to have_content(restaurant.name)
    expect(page).to have_content(restaurant.address)
    expect(page).to have_content(restaurant.city)
    expect(page).to have_content(restaurant.state)
    expect(page).to have_content(restaurant.zipcode)
  end


end
