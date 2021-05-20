require 'sinatra'
require './config'
require './lib/auto.rb'
require './lib/tablero.rb'
get '/' do
    erb :bienvenida
end

get '/menu_principal' do
    erb :menu_inicio
end

get '/inicio' do
    @entrada=params[:campo_entrada]
    @largo_tablero=@entrada.to_s.split(/\r\n/)[0].to_s.split(/,/)[0].to_i
    @alto_tablero=@entrada.to_s.split(/\r\n/)[0].to_s.split(/,/)[1].to_i    
    
    tablero=Tablero.new(@largo_tablero,@alto_tablero)
    @largo_tablero1=tablero.getLargo
    @alto_tablero1=tablero.getAlto
    
    @pos_x_auto=@entrada.to_s.split(/\r\n/)[1].to_s.split(/,/)[0].to_i
    @pos_y_auto=@entrada.to_s.split(/\r\n/)[1].to_s.split(/,/)[1].to_i
    @orientacion_auto=@entrada.to_s.split(/\r\n/)[1].to_s.split("\s")[1]
    auto=Auto.new(@orientacion_auto,@pos_x_auto,@pos_y_auto)
    @pos_x_auto1=auto.getPosicion_x
    @pos_y_auto1=auto.getPosicion_y
    @orientacion_auto1=auto.getOrientacion
    tablero.addAuto(auto)
    @comandos1=@entrada.to_s.split(/\r\n/)[2]
    @comandos=@entrada.to_s.split(/\r\n/)[2].to_s.split(//)
    @comandos.each do |c|
        if(c=="A")
            auto.avanzar(tablero.getLargo,tablero.getAlto)
        end
        if(c=="I")
            auto.girarIzquierda
        end
        if(c=="D")
            auto.girarDerecha
        end
    end
    @posxfinal=auto.getPosicion_x
    @posyfinal=auto.getPosicion_y
    @orientacionfinal=auto.getOrientacion
    erb :inicio  
end