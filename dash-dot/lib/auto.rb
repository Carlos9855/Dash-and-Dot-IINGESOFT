class Auto   
    def initialize(orientacion, posicion_x,posicion_y)          
        @orientacion = orientacion 
        @posicion_x=posicion_x
        @posicion_y=posicion_y
    end  
    def getOrientacion()
        return @orientacion
    end
    def getPosicion_x()
        return @posicion_x
    end
    def getPosicion_y()
        return @posicion_y
    end
    def setPosicion(posicion_x,posicion_y)
        @posicion_x=posicion_x
        @posicion_y=posicion_y
    end
    def girarDerecha()
        case @orientacion
            when 'N'
                @orientacion='E'
            when 'E'
                @orientacion='S'
            when 'S'
                @orientacion='O'
            when 'O'
                @orientacion='N'
        end
    end
    def girarIzquierda()
        case @orientacion
            when 'N'
                @orientacion='O'
            when 'E'
                @orientacion='N'
            when 'S'
                @orientacion='E'
            when 'O'
                @orientacion='S'
        end
    end
    def avanzar(limite_largo,limite_alto)
        case @orientacion
            when 'N'
                if(@posicion_y+1<=limite_alto)
                    @posicion_y=@posicion_y+1
                end
            when 'S'
                if(@posicion_y-1>0)
                    @posicion_y=@posicion_y-1
                end
            when 'O'
                if(@posicion_x-1>0)
                    @posicion_x=@posicion_x-1
                end
            when 'E'
                if(@posicion_x+1<=limite_largo)
                    @posicion_x=@posicion_x+1
                end
        end
    end
end  
   
  