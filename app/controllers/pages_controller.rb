class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @cabins = Cabin.all.first(3)
  end
end
