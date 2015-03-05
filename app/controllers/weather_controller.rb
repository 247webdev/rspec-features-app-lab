class WeatherController < ApplicationController
  def index

  end

  def search
    # binding.pry
    if params[:zipcode] > 8000
      redirect_to :search
    else
      redirect_to :rainny
      endpara
    end
  end
  
end