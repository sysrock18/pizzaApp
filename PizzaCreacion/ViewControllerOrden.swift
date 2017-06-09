//
//  ViewControllerOrden.swift
//  PizzaCreacion
//
//  Created by Simon Gonzalez on 6/9/17.
//  Copyright © 2017 Galpa Services. All rights reserved.
//

import UIKit

class ViewControllerOrden: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! ViewController
        sigVista.navigationItem.hidesBackButton = true
    }
    
}
