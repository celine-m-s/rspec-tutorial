require 'rails_helper'

feature 'User sees own todos' do
  scenario 'does not see others todos' do
    Todo.create!(name: "My new item", email: "someone_else@gmail.com")

    sign_in_as "someone_else@gmail.com"

    expect(page).not_to have_css '.todos li', text: 'My new item'
  end
end
