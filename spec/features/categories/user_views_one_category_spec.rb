require 'rails_helper'

describe "User views one category" do
  scenario "user sees the category and associated jobs" do
    category = create(:category_with_jobs)

    visit category_path(category)

    expect(current_path).to eq("/categories/#{category.id}")
    expect(page).to have_content("#{category.title}")
    expect(page).to have_content("#{category.jobs[0].title}")
    expect(page).to have_content("#{category.jobs[1].title}")
  end
end
