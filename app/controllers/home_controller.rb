class HomeController < ApplicationController
  before_action :authenticate_user!
  caches_action :index, expires_in: 30.seconds
  caches_page :show

  def index

  end

  def show

  end
end
