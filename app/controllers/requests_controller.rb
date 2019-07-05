class RequestsController < ApplicationController
  def show
  	@requests = Request.all
  end

  def edit
  end

  def new
      @new_request = Request.new
  end

  def create
  	@new_request = Request.new(request_params)
    @new_request.preferedTime = date_from_params(params, :preferedTime)
    respond_to do |format|
      if @new_request.save
        format.html { flash.notice = I18n.t('controllers.requests.created')
          redirect_to root_url }
        format.js { puts 'js request' }
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

end 
