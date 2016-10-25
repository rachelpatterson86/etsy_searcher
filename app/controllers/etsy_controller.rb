class EtsyController < ApplicationController

  # GET /etsy_search => etsy#search
  # EX: localhost:3000/etsy_search?q=whiskey
  def search
    Etsy.api_key = ENV['ETSY_API_TOKEN']

    search_results =  Etsy::Request.get(
      '/listings/active',
      :includes => ['Images', 'Shop'],
      :keywords => 'whiskey'
    )

    @listings = JSON.parse(search_results.body)['results']
    render :search
  end
end
