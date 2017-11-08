require 'rails_helper'

RSpec.describe 'shared/_navbar', type: :view do
  context 'for a member with no roles' do
    before(:each) { render 'shared/navbar', current_member: build(:member) }

    it { should_not have_link 'Admin Dashboard' }
  end
end
