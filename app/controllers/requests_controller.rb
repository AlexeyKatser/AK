class RequestsController < ApplicationController

  before_action :checkUserAdminWithRedirect, only: [:new, :create, :edit, :update, :index]
  before_action :set_request, only: [:edit, :show, :update, :destroy]

  def show
  	@requests = Request.all
  end

  def edit
  end

  def new
      @new_request = Request.new
  end

  def index
    @requests = Request.all
    render action: 'show'
  end

  def create
  	@new_request = Request.new(request_params)
    @new_request.preferedTime = date_from_params(params, :preferedTime)
    respond_to do |format|
      if @new_request.save
        format.js { render layout: false, content_type: 'text/javascript' }
        format.html { flash.notice = I18n.t('controllers.requests.created') 
          redirect_to root_url }
        format.json { puts 'json request' }
      else
  		  format.html { render action: 'new' }
        format.js
  	  end
    end
  end

  def new
  	@new_request = Request.new
  end

  private
  def request_params
  	params.require(:request).permit(:name, :phone, :text, :preferedTime, :setTime, :rtype, :status)	
  end

  def set_request
    @request = Request.find(params[:id])
  end

end 
