require 'rails_helper'

describe "User sees a specific job" do
  scenario "a user sees a job for a specific company" do
    company = create(:company_with_jobs)
    # company = Company.create!(name: "ESPN")
    # category = create_list(:category, 3)
    # job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")

    visit company_job_path(company, company.jobs[0])

    expect(page).to have_content("#{company.name}")
    expect(page).to have_content("#{company.jobs[0].title}")
    expect(page).to have_content("#{company.jobs[0].level_of_interest}")
  end
end
