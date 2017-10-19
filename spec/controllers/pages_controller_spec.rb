require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  it "should get home" do
    get :home
    expect(response).to have_http_status :success
  end

  it "should get about" do
    get :about
    expect(response).to have_http_status :success
  end

  it "should get privacy" do
    get :privacy
    expect(response).to have_http_status :success
  end

  it "should get terms" do
    get :terms
    expect(response).to have_http_status :success
  end
end
