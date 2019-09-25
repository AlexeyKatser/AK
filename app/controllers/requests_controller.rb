class RequestsController < ApplicationController

  layout 'admin', only: [:edit, :update, :show, :index]

  before_action :checkUserAdminWithRedirect, only: [:new, :create, :edit, :update, :index]
  before_action :set_request, only: [:edit, :show, :update, :destroy]
  before_action :set_service, only: [:create, :edit, :update]

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
  	@new_request = @service.requests.build(request_params)
    @new_request.preferedTime = date_from_params(params, :preferedTime)
    respond_to do |format|
      if @new_request.save
        format.js { flash.notice = I18n.t('controllers.requests.created') { render layout: false, content_type: 'text/javascript' } }
        format.html { flash.notice = I18n.t('controllers.requests.created') 
          redirect_to root_url }
        format.json { puts 'json request' }
      else
  		  format.html { render action: 'new' }
        format.js { render action: 'new' }
  	  end
    end
  end

  def new
  	@new_request = Request.new
  end

  private
  def request_params
  	params.require(:request).permit(:name, :phone, :text, :preferedTime, :setTime, :rtype, :status, :service_id)	
  end

  def set_request
    @request = Request.find(params[:id])
  end

  def set_service
        @s_type = params[:request][:service_id]
    @service = Service.find(params[:request][:service_id])
  end

end 
