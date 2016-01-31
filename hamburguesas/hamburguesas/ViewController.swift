//
//  ViewController.swift
//  hamburguesas
//
//  Created by Cristhian Cabral on 31/1/16.
//  Copyright © 2016 cscabral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelPais: UILabel!
    @IBOutlet weak var labelHamburguesa: UILabel!
    
    let paises      = ColeccionDePaises()
    let hamburgesas = ColeccionDeHamburguesa()
    let colores     = Colores()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarPaisHamburguesa() {
        
        labelPais.text        = paises.obtenPais()
        labelHamburguesa.text = hamburgesas.obtenHamburguesa()
        let colorAleatorio    = colores.regresaColorAleatorio()
        view.backgroundColor  = colorAleatorio
        view.tintColor        = colorAleatorio
        
    }

}

