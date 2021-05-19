require 'sinatra'
require './config'

get '/' do
    erb :bienvenida
end

get '/menu_principal' do
    erb :menu_inicio
end