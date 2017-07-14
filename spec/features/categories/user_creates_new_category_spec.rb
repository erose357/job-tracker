require 'rails_helper'

describe "User creates a new category" do
  scenario "a user can create a new category" do
    category = build(:category)

    visit new_category_path

    fill_in "category[title]"

    click_button "Create"

    expect(current_path).to eq("/categories/#{category.id}")
    expect(page).to have_content(category.title)
    end
end
