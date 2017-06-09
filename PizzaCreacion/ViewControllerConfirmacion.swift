//
//  ViewControllerConfirmacion.swift
//  PizzaCreacion
//
//  Created by Simon Gonzalez on 6/7/17.
//  Copyright © 2017 Galpa Services. All rights reserved.
//

import UIKit

class ViewControllerConfirmacion: UIViewController {
    
    var pizza = Pizza()
    @IBOutlet weak var sizeText: UILabel!
    @IBOutlet weak var flourText: UILabel!
    @IBOutlet weak var cheeseText: UILabel!
    @IBOutlet weak var ingredientsText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.sizeText.text = pizza.size
        self.sizeText.sizeToFit()
        self.flourText.text = pizza.flour
        self.flourText.sizeToFit()
        self.cheeseText.text = pizza.cheese
        self.cheeseText.sizeToFit()
        self.ingredientsText.text = pizza.ingredients.joined(separator: "\n")
        self.ingredientsText.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! ViewControllerOrden
        sigVista.navigationItem.hidesBackButton = true
    }
    
}
