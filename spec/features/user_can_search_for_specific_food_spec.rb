
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
require 'rails_helper'

feature 'user can search for specific food' do
  scenario 'user submits valid food name' do

    visit '/'

    within ".search=field" do
      fill_in :q, with: "sweet potatoes"
    end
    click_on "Search"
    expect(current_path).to eq(foods_path)

    expect(page).to have_content(10)
    expect(page).to have_content("070560951975")
    expect(page).to have_content("SWEET POTATOES")
    expect(page).to have_content("The Pictsweet Company")
    expect(page).to have_content("SWEET POTATOES.")
  end
end
