class PageCachingController < ApplicationController
  caches_page :show

  def show

  end
end