class HomeController < ApplicationController
  def index
    @today_country = CountryOrder.find_by(current: true).country
  end
end
