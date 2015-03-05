require "rails_helper"

feature "Visitor checks weather" do
  scenario "sunny" do
    #setup
    visit root_path

    #exercise
    fill_in "What's your zipcode?", with: "94702" # the fill_in uses that actual label used in the form, so put 
    click_button "Is it going to rain?" # use the text on the button

    #Verify
    expect(page).to have_content("Sun's gonna be shining!")
    expect(page).to have_content("No umbrella needed.")

    #Teardown
  end

end