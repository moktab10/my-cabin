class DashboardsController < ApplicationController
  def show
    @cabins = Cabin.where(user: current_user)
  end
end
