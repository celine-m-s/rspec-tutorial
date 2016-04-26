require 'rails_helper'

feature "User create a new todo" do
  scenario "successfully" do

    sign_in

    click_on 'New todo'

    # fill in some form fields with data
    fill_in "name_field", with: "My new item"

    # click on submit
    click_on "submit"

    #expect(page).to have_content 'My new item'

    expect(page).to have_css '.todo li', text: "My new item"

  end

 # pending "unsuccessfully if something missing" do

 # end

end