require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    click_on 'New todo'

    fill_in "name_field", with: "My new item"

    click_on "submit"

    click_on "Mark as complete"

    expect(page).to have_css ".todo li.completed", text: 'My new item'
  end  
end