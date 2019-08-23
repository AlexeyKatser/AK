class WelcomeController < ApplicationController
  def index
  end

  def info
  end

  def show
  	render template: "welcome/#{params[:page]}"
  end
end
