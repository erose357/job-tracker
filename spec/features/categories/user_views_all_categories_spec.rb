require 'rails_helper'

describe "User sees all categories" do
  scenario "a user sees all the categories" do
    category = create_list(:category, 5)
# byebug
    visit categories_path

    expect(page).to have_content("Category1")
    # find_link('Edit')[:href].should == "categories/#{category[1].id}"
    expect(page).to have_link('Edit')#, href: "/categories/#{category[0].id}")
    expect(page).to have_link('Delete')
  end
end
