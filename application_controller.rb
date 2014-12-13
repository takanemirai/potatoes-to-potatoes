require 'bundler'
Bundler.require
require_relative './models/potato.rb'
require_relative './models/redpotato1.rb'


class MyApp < Sinatra::Base

  get '/home' do
    erb :index
  end

  get '/potato1.erb' do
    @redpotato = RedPotato1.new
    @redpotato
    @purplepotato = PurplePotato.new
    @purplepotato
    erb :potato1
  end

  get '/score.erb' do
    erb :score
  end

  get '/about.erb' do
    erb :about
  end
end