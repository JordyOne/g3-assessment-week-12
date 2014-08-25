feature "movies" do
  scenario "user can add movies to list" do
    visit "/"

    click_on("Add Movie")

    fill_in "Name", with: "Any Given Sunday"
    fill_in "Year", with: 2345
    fill_in "Synopsis", with: "This movie sucked"

    click_on("Create Movie")

    expect(page).to have_content("Any Given Sunday")
    expect(page).to have_content("2345")
    expect(page).to have_content("This movie sucked")
  end

  scenario "form validates information" do
    visit "/"

    click_on("Add Movie")

    click_on("Create Movie")

    expect(page).to have_content("Name is blank")
    expect(page).to have_content("Year is not a number")
    expect(page).to have_content("Year is blank")
    expect(page).to have_content("Synopsis is blank")
  end
end
