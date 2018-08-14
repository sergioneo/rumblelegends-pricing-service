class PricingController < ApplicationController
  def eggs

  	req_url = ENV["CONTRACT_MASTER_SERVICE"]+"eggs/get_prices"
  	eggs = Typhoeus.get(req_url, followlocation: true).body

  	render json: eggs
  end

  def beast

  	req_url = ENV["CONTRACT_MASTER_SERVICE"]+"beast/get_price/"+param[:id]
  	price_structure =  Typhoeus.get(req_url, followlocation: true).body

  	render json: price_structure
  end
end
