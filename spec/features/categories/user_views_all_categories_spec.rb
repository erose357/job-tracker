require 'rails_helper'

describe "User views all categories" do
  scenario "a user sees all the categories" do
    category = create_list(:category, 5)
# byebug
    visit categories_path

    expect(page).to have_content("#{category[0].title}")
    # find_link('Edit')[:href].should == "categories/#{category[1].id}"
    expect(page).to have_link('Edit')#, href: "/categories/#{category[0].id}")
    expect(page).to have_link('Delete')
  end
end
