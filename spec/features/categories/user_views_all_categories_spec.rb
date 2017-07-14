require 'rails_helper'

describe "User sees all categories" do
  scenario "a user sees all the categories" do
    category = create_list(:category, 5)

    visit categories_path
save_and_open_page
    expect(page).to have_content("Category1")
  end
end
