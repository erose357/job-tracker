require 'rails_helper'

describe "User sees all jobs" do
  scenario "a user sees all the jobs for a specific company" do
    company = create(:company_with_jobs)
    # company = Company.create!(name: "ESPN")
    # company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    # company.jobs.create!(title: "QA Analyst", level_of_interest: 70, city: "New York City")

    visit company_path(company)

    expect(page).to have_content(company.name)
    expect(page).to have_content(company.jobs[0].title)
    expect(page).to have_content(company.jobs[2].title)
  end
end
