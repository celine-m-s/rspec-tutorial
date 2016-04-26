require 'rails_helper'

# Capybara syntax

# feature & scenario methods

# A feature is a bunch of scenarios
# A scenario is a small part of the feature (like a functionnality)

# This is a smoke test

feature 'User visits homepage' do
  scenario 'successfully' do
    sign_in
    expect(page).to have_css 'h1', text: 'Todos'
  end
end

feature 'User clicks on new todo' do
  scenario 'successfully' do
    sign_in

    click_on "New todo"

    # save_and_open_page

    # expect(page).to have_link(new_todo_path)
  end
end