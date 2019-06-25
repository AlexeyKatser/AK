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
  	puts "created"
  	if @new_request.save
  		redirect_to root_url, notice: 'Заявка успешно подана'
    else
  		render 'new'
  	end
  end

  def new
  	@new_request = Request.new
  end

  private
  def request_params
  	params.require(:request).permit(:name, :phone, :text, :preferedTime, :setTime)	
  end

  def date_from_params(params, date_key)
    date_keys = params.keys.select { |k| k.to_s.match?(date_key.to_s) }.sort
    date_array = params.values_at(*date_keys).map(&:to_i)
    Date.civil(*date_array)
  end

end 
