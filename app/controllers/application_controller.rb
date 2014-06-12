class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['82hJ55dxqop9rCtVvMtUGthPv']
      config.consumer_secret = ENV['a0nK7yyjBUMwBOlerbnBQQkD3FMC9J2RU9xVROBN1Z2QmRHNnZ']
      config.access_token = session['21093763-lAVKGh0xAChzCDjuB1C9hmQHXSFMPBg4WUMdvBKED']
      config.access_token_secret = session['fi6nSdzNa6ciTDqL5T5pe6HZd6M9fm28WLvaH7gBZZkHF']
    end
  end
end
