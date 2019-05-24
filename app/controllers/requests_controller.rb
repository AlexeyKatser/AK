class RequestsController < ApplicationController
  def show
  	@requests = Request.all
  end

  def edit
  end

  def create
  	@new_request = Request.new(request_params)
  	puts "created"
  	if @new_request.save
  		redirect_to "/requests/show", notice: 'Заявка успешно подана'
  	else
  		render '/welcome/index'
  	end
  end

  def new
  	@new_request = Request.new
  end

  private
  def request_params
  	params.require(:request).permit(:name, :phone, :text)	
  end

end
