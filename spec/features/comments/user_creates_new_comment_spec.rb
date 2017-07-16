require 'rails_helper'

describe "User creates a new comment" do
  scenario "user is able to create a new comment" do
    job = create(:job)
# byebug
    visit company_job_path(job.company.id, job.id)

    fill_in "comment[content]", with: "Outstanding!"

    click_button "Create"

    expect(current_path).to eq("/companies/#{job.company.id}/jobs/#{job.id}")
    expect(page).to have_content("Outstanding!")
    expect(page).to have_content("Comment successfully added!")
  end
end
