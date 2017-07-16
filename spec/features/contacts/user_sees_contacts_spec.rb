require 'rails_helper'

describe "User creates a new contact" do
  scenario "user can create a new contact" do
    company = create(:company)

    visit company_path(company)

    fill_in "contact[name]", with: "Guru"
    fill_in "contact[position]", with: "You know my steez"
    fill_in "contact[email]", with: "fullclip@album.hip-hop"

    click_button "Create Contact"

    expect(current_path).to eq("/companies/#{company.id}")
    expect(page).to have_content("Guru")
    expect(page).to have_content("You know my steez")
  end
end
