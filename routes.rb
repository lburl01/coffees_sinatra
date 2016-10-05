require_relative 'environment'
require_relative 'coffee'
require_relative 'country'
require 'sinatra'



get '/api/coffee' do
  Coffee.all.to_json
end

get '/api/country' do
  Country.all.to_json
end

get '/' do
  Country.select("*").where(id: 1).all.joins(:coffees).to_json
end

post 'api/coffees' do
  coffee = Coffee.new(name: params['name'], country_id: params['id'])
  if coffee.valid?
    if coffee.save
      status 201
      return coffee.to_json
    end
  end
  status 400
end
