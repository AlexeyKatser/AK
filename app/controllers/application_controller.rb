class ApplicationController < ActionController::Base

  def date_from_params(params, date_key)
    date_keys = params.keys.select { |k| k.to_s.match?(date_key.to_s) }.sort
    date_array = params.values_at(*date_keys).map(&:to_i)
    Date.civil(*date_array)
  end

end
