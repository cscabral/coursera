//
//  Datos.swift
//  hamburguesas
//
//  Created by Cristhian Cabral on 31/1/16.
//  Copyright © 2016 cscabral. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    
    let paises:[String] = ["Argentina","Paraguay","Bolivia","Uruguay","Colombia","Ecuador","Chile",
                           "Venezuela","Mexico","USA","Francia","Alemania","Italia","Inglaterra","China",
                           "Japon","Taiwan","Australia","Canada","Guatemala"]
    
    func obtenPais() -> String{
        let posicion = Int( arc4random()) % paises.count
        return paises[posicion]
    }
    
}

class ColeccionDeHamburguesa {
    
    let hamburguesas:[String] = ["Temera","Raza Nostra","Deportista","De Pueblo","Barbacoa","Bacon","Parmigiano",
                           "Ranchera","Iberica","A la antigua","Roquefort","Cebolla Ponchada","Transilvania",
                           "Americana","Juan Pozuelo","4 Quesos","Temera Blanca","Trufa","Setas","Al Oporto"]
    
    func obtenHamburguesa() -> String{
        let posicion = Int( arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
    
}

struct Colores {
    
    let colores = [ UIColor(red: 210/255.0, green: 90/225.0, blue: 45/255.0, alpha: 1),
        UIColor(red: 40/255.0, green: 170/225.0, blue: 45/255.0, alpha: 1),
        UIColor(red: 210/255.0, green: 190/225.0, blue: 5/255.0, alpha: 1),
        UIColor(red: 3/255.0, green:  50/225.0, blue: 90/255.0, alpha: 1),]
    
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int( arc4random()) % colores.count
        return colores[posicion]
    }
    
}
