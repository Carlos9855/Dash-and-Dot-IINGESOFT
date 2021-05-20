Feature:
    Como nino
    Quiero ingresar comandos de creacion del tablero
    Para poder jugar con un auto y movimientos en el mismo
    
Scenario:
    Given visito la pgina de comandos
    When ingreso la posicion inicial del auto "2,2\n1,1 N\nDA"
    Then testable outcome presiono el boton "ejecutar"