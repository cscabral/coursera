
import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad : Velocidades
    
    init(){
        
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena : String){
        
        switch velocidad {
            
        case .velocidadBaja:
            self.velocidad = Velocidades.velocidadMedia
            return ( self.velocidad.rawValue, "Velocidad media" )
        case .velocidadMedia:
            self.velocidad = Velocidades.velocidadAlta
             return ( self.velocidad.rawValue, "Velocidad alta" )
        case .velocidadAlta:
            self.velocidad = Velocidades.velocidadMedia
            return ( self.velocidad.rawValue, "Velocidad media" )
        default: //Apagado
            print("( \(self.velocidad.rawValue), \"\(self.velocidad)\" )")
            self.velocidad = Velocidades.velocidadBaja
            return ( self.velocidad.rawValue, "Velocidad baja" )
            
        }
    }
    
}

var auto = Auto()

for var i = 1; i <= 20; i++ {
    print(auto.cambioDeVelocidad())
}
