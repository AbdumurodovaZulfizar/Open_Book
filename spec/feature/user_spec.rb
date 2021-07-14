require 'rails_helper'

RSpec.describe 'Creating a user', type: :feature do
  scenario 'valid inputs' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'user[username]', with: '@zulfizar'
    fill_in 'user[full_name]', with: 'Zulfizar Abdumurodova'
    click_button 'sign_up'
    # visit root_path
    expect(page).to have_content('Zulfizar Abdumurodova')
  end
end
