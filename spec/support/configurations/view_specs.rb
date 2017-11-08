RSpec.shared_context 'view spec context' do
  subject { rendered }
end

RSpec.configure do |config|
  config.include_context 'view spec context', type: :view
end
