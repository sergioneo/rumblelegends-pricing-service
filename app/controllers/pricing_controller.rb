class PricingController < ApplicationController
  def eggs

  	req_url = ENV["CONTRACT_MASTER_SERVICE"]+"eggs/get_prices"
  	eggs = Typhoeus.get(req_url, followlocation: true).body

  	render json: eggs
  end

  def beast

    require 'cryptocompare'

  	req_url = ENV["CONTRACT_MASTER_SERVICE"]+"beast/get_price/"+params[:id]
  	price_structure =  Typhoeus.get(req_url, followlocation: true).body

    usd_conversion = Cryptocompare::Price.find('ETH', 'USD')

    eth_value = price_structure["price"].to_f
    usd_value = eth_value * usd_conversion["ETH"]["USD"]

    return_structure = Hash.new
    return_structure["eth"] = eth_value
    return_structure["usd"] = usd_value

  	render json: return_structure
  end
end
