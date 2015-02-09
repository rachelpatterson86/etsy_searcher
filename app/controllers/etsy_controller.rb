class EtsyController < ApplicationController
  ETSY_API_TOKEN = ENV['ETSY_API_TOKEN']
  # ETSY_API_TOKEN = kn84tew7pjzr6upsxq0m864t
  # SECRET = va4dv3nqsl
  # GET /etsy_search => etsy#search
  # GET /etsy_search
  def search
    search_results =  Etsy::Request.get('/listings/active',:includes => ['Images', 'Shop'],:keywords => 'whiskey')
    @listings = JSON.parse(search_results.body)
    render :search
  end
end
