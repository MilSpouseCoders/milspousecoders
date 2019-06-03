class AdminController < ApplicationController
  before_action :ensure_admin

  private

  def ensure_admin
    return if current_member.has_role? :admin
    flash[:alert] = 'Sorry, that page is restricted to admins.'
    redirect_back fallback_location: root_path
  end
end
