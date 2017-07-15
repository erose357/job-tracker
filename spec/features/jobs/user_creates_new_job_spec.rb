require 'rails_helper'

describe "User creates a new job" do
  scenario "a user can create a new job" do
    # company = create(:company_with_jobs)
    company = Company.create!(name: "ESPN")
    visit new_company_job_path(company)
# save_and_open_page
    fill_in "job[title]", with: "Developer"
    fill_in "job[description]", with: "So fun!"
    fill_in "job[level_of_interest]", with: 80
    fill_in "job[city]", with: "Denver"

    click_button "Create"
# byebug
    expect(current_path).to eq("/companies/#{company.id}/jobs/#{Job.last.id}")
    expect(page).to have_content("Vandelay Industries")
    expect(page).to have_content("Developer")
    expect(page).to have_content("80")
    expect(page).to have_content("Denver")
  end
end
