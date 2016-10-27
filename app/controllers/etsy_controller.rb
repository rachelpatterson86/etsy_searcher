class EtsyController < ApplicationController

  # GET /etsy_search => etsy#search
  # EX: localhost:3000/etsy_search?q=whiskey
  def search
    Etsy.api_key = ENV['ETSY_API_TOKEN']

    search_results =  Etsy::Request.get(
      '/listings/active',
      :includes => ['Images', 'Shop'],
      :keywords => params[:q],
      :category => params[:c]
    )

    @listings = JSON.parse(search_results.body)['results']
    @categories = EtsyController::all_categories
    # binding.pry
    render :search
  end

  def self.all_categories
    categories = Etsy::Category.all_top
  end
end
