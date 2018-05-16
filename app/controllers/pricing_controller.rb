class PricingController < ApplicationController
  def eggs
  	mocked_return = Hash.new
  	mocked_return["0"] = "0.7"
  	mocked_return["1"] = "0.9"

  	render json: mocked_return
  end
end
