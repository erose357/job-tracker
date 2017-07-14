require 'rails_helper'

describe "User edits an existing category" do
  scenario "a user can edit a category" do
    category = create(:category)

    visit edit_category_path(category)

    fill_in "category[title]", with: "Farming"

    click_button "Update"

    expect(current_path).to eq("/categories/#{category.id}")
    expect(page).to have_content("Farming")
    expect(page).to_not have_content("Marketing")
  end
end
