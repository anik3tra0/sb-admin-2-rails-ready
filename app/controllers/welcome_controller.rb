class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.role == "admin"
      redirect_to admin_dashboard_index_path
    end
  end
end
