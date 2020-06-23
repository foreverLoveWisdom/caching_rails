class HomeController < ApplicationController
  before_action :authenticate_user!
  caches_action :index, expires_in: 30.seconds

  def index

  end
end
