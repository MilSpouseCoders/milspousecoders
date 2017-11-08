require 'rails_helper'

RSpec.describe Admin::DashboardsController, type: :controller do
  it_should_behave_like 'an admin restricted controller'
end
