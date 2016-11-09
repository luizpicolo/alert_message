class HomeController < ApplicationController
  def index
    flash[:"#{params[:message]}"] = "test #{params[:message]} message"
  end
end
