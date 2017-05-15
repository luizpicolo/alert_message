class HomeController < ApplicationController
  def index
    flash.now[:"#{params[:message]}"] = "test #{params[:message]} message"
  end
end
