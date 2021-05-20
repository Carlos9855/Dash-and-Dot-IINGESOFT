require './lib/auto.rb'
class Tablero   
    def initialize(largo, alto)            
        @alto = alto 
        @largo=largo
        @auto=nil
    end  
   
    def getAlto()
        return @alto
    end
    def getLargo()
        return @largo
    end
    def addAuto(auto)
        if(auto.getPosicion_x>@largo||auto.getPosicion_y>@alto ||auto.getPosicion_x<1||auto.getPosicion_y<1)
            return false            
        else
            @auto=auto
            return true
        end
    end
end  