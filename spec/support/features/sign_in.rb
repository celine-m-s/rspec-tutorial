module Features
  def sign_in
    visit root_path

    fill_in 'Email', with: 'hey@example.com'
    click_on 'Sign in'

    # redirect_to root_path
  end
end
