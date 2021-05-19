require 'sinatra'
require './config'

get '/' do
    erb :bienvenida
end

get '/inicio' do
    erb :inicio
end