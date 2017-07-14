require 'rails_helper'

describe "User deletes existing category" do
  scenario "user can delete a category" do
    category = create_list(:category, 5)

    visit categories_path
    # byebug
    within "ul" do
      click_link('Delete', :match => :first)
    end

    expect(page).to have_content("Marketing2")
    expect(page).to have_content("Marketing1 was successfully deleted!")
  end
end
