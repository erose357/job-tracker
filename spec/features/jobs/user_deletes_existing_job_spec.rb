require 'rails_helper'

describe "User deletes and existing job" do
  scenario "a user can delete a job" do
    job = create(:job)

    visit company_job_path(job.company.id, job.id)

    click_link "Delete"

    expect(page).to have_content("#{job.title} was successfully deleted!")
  end
end
