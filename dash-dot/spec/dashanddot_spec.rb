require './lib/auto.rb'
require './lib/tablero.rb'


RSpec.describe "dash dot" do
    it "deberia devolver el la orientacion N del auto creado si le pasamos 'N' '1,2'" do
        expect(Auto.new('N',1,2).getOrientacion).to eq 'N' 
    end
    it "deberia devolver la posicion X 1 del auto creado si le pasamos 'N' 1,2" do
        expect(Auto.new('N',1,2).getPosicion_x).to eq 1 
    end
    it "deberia devolver la posicion Y 2 del auto creado si le pasamos 'N' 1,2" do
        expect(Auto.new('N',1,2).getPosicion_y).to eq 2 
    end
    it "deberia devolver la altura 5 del tablero si le pasamos 3,5" do
        expect(Tablero.new(3,5).getAlto).to eq 5 
    end
    it "deberia devolver el largo 3 del tablero si le pasamos 3,5" do
        expect(Tablero.new(3,5).getLargo).to eq 3
    end    
    it "deberia devolver posicion y-1 <1> si le pasamos el comando avanzar "do
        tablero=Tablero.new(3,5)
        auto=Auto.new('S',1,2)
        tablero.addAuto(auto)
        auto.avanzar(tablero.getLargo,tablero.getAlto,20,20)
        expect(auto.getPosicion_y).to eq 1
    end

    it "deberia devolver posicion x sin moverse <1> si le pasamos el comando avanzar "do
        tablero=Tablero.new(3,5)
        auto=Auto.new('O',1,2)
        tablero.addAuto(auto)
        auto.avanzar(tablero.getLargo,tablero.getAlto,20,20)
        expect(auto.getPosicion_x).to eq 1
    end  
    it "deberia devolver posicion x sin moverse <3> si le pasamos el comando avanzar "do
        tablero=Tablero.new(3,5)
        auto=Auto.new('E',3,2)
        tablero.addAuto(auto)
        auto.avanzar(tablero.getLargo,tablero.getAlto,20,20)
        expect(auto.getPosicion_x).to eq 3
    end
    it "deberia devolver E si le pasamos un auto orientaion S y el comando girarIzquierda()" do
        auto=Auto.new('S',3,2)
        auto.girarIzquierda()
        expect(auto.getOrientacion).to eq 'E' 
    end
    it "deberia devolver N si le pasamos un auto orientaion E y el comando girarIzquierda()" do
        auto=Auto.new('E',3,2)
        auto.girarIzquierda()
        expect(auto.getOrientacion).to eq 'N' 
    end
    it "deberia actializar la posicion del auto" do 
        auto=Auto.new('N',5,9)
        auto.setPosicion(1,1)
        expect(auto.getPosicion_y).to eq 1
        expect(auto.getPosicion_x).to eq 1
    end
end