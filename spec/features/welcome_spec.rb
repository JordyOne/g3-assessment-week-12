feature "welcome" do
  scenario "user sees the title on homepage" do
    visit "/"

    expect(page).to have_content("CageFlix")
    expect(page).to have_content("Netflix for Nic Cage movies")
  end
end

