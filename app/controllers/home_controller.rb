class HomeController < ApplicationController
  def index
      require 'net/http'
      require 'json'
      
      @url = 'https://api.coinmarketcap.com/v1/ticker/'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @coins = JSON.parse(@response)
      @my_coins = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
  end
    
  def about
  end
    
  def lookup
      require 'net/http'
      require 'json'
      @url = 'https://api.coinmarketcap.com/v1/ticker/'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @lookup_coin = JSON.parse(@response) 
      
      @symbol = params[:symbol]
      
      if @symbol
          @symbol = @symbol.upcase
      end
      
      if @symbol == ''
          @symbol = 'No Currency Entered!'
      end
  end
    
end
