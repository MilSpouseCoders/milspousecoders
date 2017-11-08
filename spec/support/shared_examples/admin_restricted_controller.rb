RSpec.shared_examples 'an admin restricted controller' do
  RESOURCEFUL_VERB_ACTION_PAIRS ||= [
    [:get, :index],
    [:get, :new],
    [:post, :create],
    [:get, :show],
    [:get, :edit],
    [:patch, :update],
    [:put, :update], # TODO: what happens in here if only one verb is defined?
    [:delete, :destroy]
  ].freeze

  def self.controller_defines?(action)
    described_class.action_methods.include? action.to_s
  end

  before { request.env['HTTP_REFERER'] = 'http://www.previous_page.com' }

  RESOURCEFUL_VERB_ACTION_PAIRS.each do |verb, action|
    next unless controller_defines? action

    describe "#{verb.upcase} ##{action}" do
      before do
        sign_in create(:member)
        send(verb, action)
      end

      it { should redirect_to 'http://www.previous_page.com' }
    end
  end
end
