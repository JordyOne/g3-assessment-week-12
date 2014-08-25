feature "welcome" do
  scenario "user sees the title on homepage" do
    visit "/"

    expect(page).to have_content("CageFlix")
    expect(page).to have_content("Netflix for Nic Cage movies")
  end

  scenario "user can see new movies fields" do
    visit "/"

    click_on("Add Movie")

    expect(page).to have_field("Name")
    expect(page).to have_field("Year")
    expect(page).to have_field("Synopsis")
  end
end