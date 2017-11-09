require 'rails_helper'

# TODO: remove this file before merging into master - it's just here to
#       demonstrate that things are set up properly for js enabled specs

RSpec.describe 'Smoke test', type: :feature do
  scenario 'we can visit the app home page with the js drive', :js do
    visit root_path
  end
end
