require 'rails_helper'

describe "User edits an existing job" do
  scenario "a user can edit a job" do
    job = create(:job)

    visit edit_company_job_path(job.company, job)
# save_and_open_page
    fill_in "job[title]", with: "Muck Raker"
    click_button "Update"

    expect(current_path).to eq("/companies/#{job.company_id}/jobs/#{job.id}")
    expect(page).to have_content("Muck Raker")
    expect(page).to_not have_content("Mechanic")
  end
end
