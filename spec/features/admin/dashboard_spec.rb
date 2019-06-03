require 'rails_helper'

RSpec.describe 'Admin Dashboard', type: :feature do
  scenario 'Admin logs in and views the admin dashboard' do
    admin = create :admin

    visit root_path
    click_on 'Login'
    fill_in 'member_email', with: admin.email
    fill_in 'member_password', with: admin.password
    click_on 'Log in'
    click_on 'Admin Dashboard'

    expect(find('main')).to have_content 'Admin Dashboard'
  end
end
