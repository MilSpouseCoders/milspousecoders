require 'rails_helper'

RSpec.describe Member, type: :model do
  it { should have_and_belong_to_many :roles }
end
