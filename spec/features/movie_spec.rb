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

    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Year must be a number")
    expect(page).to have_content("Year can't be blank")
    expect(page).to have_content("Synopsis can't be blank")
  end
end
