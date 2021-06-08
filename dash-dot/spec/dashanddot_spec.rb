require './lib/auto.rb'
require './lib/tablero.rb'
require './lib/obstaculo.rb'
RSpec.describe "dash dot" do
    it "deberia devolver posicion x+1 <1> si le pasamos el comando avanzar "do
        tablero=Tablero.new(3,5)
        auto=Auto.new('O',2,2)
        auto1=Auto.new('O',2,4)
        tablero.addAuto(auto1)
        auto.avanzar(tablero.getLargo,tablero.getAlto,tablero.getAutos)
        expect(auto.getPosicion_x).to eq 1
    end 
    it "deberia devolver posicion y-1 <3> si le pasamos el comando avanzar "do
        tablero=Tablero.new(3,5)
        auto=Auto.new('E',2,3)
        auto1=Auto.new('E',1,4)
        tablero.addAuto(auto1)    
        auto.avanzar(tablero.getLargo,tablero.getAlto,tablero.getAutos)
        expect(auto.getPosicion_x).to eq 3
    end 
    it "deberia devolver posicion del obstaculo_X" do
        obstaculo= Obstaculo.new(2,6)
        expect(obstaculo.getPosicioObs_x()).to eq 6
    end

    it "deberia devolver 2 posicon del obstaculo_Y" do
        obstaculo= Obstaculo.new(2,6)
        expect(obstaculo.getPosicionObs_y()).to eq 2
    end

    it "deberia devolver true al añadir un obstaculo al tablero" do 
        obstaculo= Obstaculo.new(2,6)
        tablero = Tablero.new(5,5)
        expect(tablero.addObstaculo(obstaculo)).to eq true
    end

    it "deberia devolver true al añadir un obstaculo al tablero" do
        obstaculo= Obstaculo.new(3,3)
        tablero = Tablero.new(10,10)
        expect(tablero.addObstaculo(obstaculo)).to eq true
    end
    it "deberia devolver posicion y-1 <2> si le pasamos el comando avanzar "do
        tablero=Tablero.new(3,5)
        auto=Auto.new('S',2,2)
        auto1=Auto.new('S',3,2)
        obstaculo=Obstaculo.new(2,3)
        tablero.addAuto(auto1)
        tablero.addObstaculo(obstaculo)
        auto.avanzar(tablero.getLargo,tablero.getAlto,tablero.getAutos)
        expect(auto.getPosicion_x).to eq 2
    end 
    it "deberia devolver posicion y-1 <2> si le pasamos el comando avanzar" do
        tablero = Tablero.new(5,5)
        auto=Auto.new('S',2,2)
        auto1=Auto.new('S',3,2)
        obstaculo = Obstaculo.new(2,3)
        tablero.addAuto(auto1)
        tablero.addObstaculo(obstaculo)
        auto.avanzar
    end
end