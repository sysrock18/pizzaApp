//
//  ViewControllerIngredients.swift
//  PizzaCreacion
//
//  Created by Simon Gonzalez on 6/6/17.
//  Copyright © 2017 Galpa Services. All rights reserved.
//

import UIKit

class ViewControllerIngredients: UIViewController {
    
    var pizza =  Pizza()
    @IBOutlet weak var optionHamSwitch: UISwitch!
    @IBOutlet weak var optionTurkeySwitch: UISwitch!
    @IBOutlet weak var optionPepperoniSwitch: UISwitch!
    @IBOutlet weak var optionOnionSwitch: UISwitch!
    @IBOutlet weak var optionSausageSwitch: UISwitch!
    @IBOutlet weak var optionPineappleSwitch: UISwitch!
    @IBOutlet weak var optionPepperSwitch: UISwitch!
    @IBOutlet weak var optionAnchovySwitch: UISwitch!
    @IBOutlet weak var optionOliveSwitch: UISwitch!
    var countIngredients = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkHamOption(_ sender: Any) {
        checkOptions(option: self.optionHamSwitch)
    }
    
    @IBAction func checkTurkeyOption(_ sender: Any) {
        checkOptions(option: self.optionTurkeySwitch)
    }
    
    @IBAction func checkPepperoniOption(_ sender: Any) {
        checkOptions(option: self.optionPepperoniSwitch)
    }
    
    @IBAction func checkOnionOption(_ sender: Any) {
        checkOptions(option: self.optionOnionSwitch)
    }
    
    @IBAction func checkSausageOption(_ sender: Any) {
        checkOptions(option: self.optionSausageSwitch)
    }
    
    @IBAction func checkPineappleOption(_ sender: Any) {
        checkOptions(option: self.optionPineappleSwitch)
    }
    
    @IBAction func checkPepperOption(_ sender: Any) {
        checkOptions(option: self.optionPepperSwitch)
    }
    
    @IBAction func checkAnchovyOption(_ sender: Any) {
        checkOptions(option: self.optionAnchovySwitch)
    }
    
    @IBAction func checkOliveOption(_ sender: Any) {
        checkOptions(option: self.optionOliveSwitch)
    }
    
    func checkOptions(option: UISwitch) {
        if option.isOn {
            if countIngredients < 5 {
                countIngredients = countIngredients + 1
            } else {
                option.setOn(false, animated: false)
                presentAlertIngredients(msg: "Ya has seleccionado 5 ingredientes")
            }
        } else {
            countIngredients = countIngredients - 1
        }
    }
    
    func presentAlertIngredients(msg: String) {
        let alert = UIAlertController(title: "Aviso", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! ViewControllerConfirmacion
        sigVista.pizza = pizza
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        self.pizza.ingredients = []
        
        if self.optionHamSwitch.isOn {
            pizza.ingredients.append("Jamon")
        }
        if self.optionTurkeySwitch.isOn {
            pizza.ingredients.append("Pavo")
        }
        if self.optionPepperoniSwitch.isOn {
            pizza.ingredients.append("Pepperoni")
        }
        if self.optionOnionSwitch.isOn {
            pizza.ingredients.append("Cebolla")
        }
        if self.optionSausageSwitch.isOn {
            pizza.ingredients.append("Salchicha")
        }
        if self.optionPineappleSwitch.isOn {
            pizza.ingredients.append("Piña")
        }
        if self.optionPepperSwitch.isOn {
            pizza.ingredients.append("Pimiento")
        }
        if self.optionAnchovySwitch.isOn {
            pizza.ingredients.append("Anchoa")
        }
        if self.optionOliveSwitch.isOn {
            pizza.ingredients.append("Aceituna")
        }
        
        if identifier == "toConfirmation" {
            if !(pizza.ingredients.count > 0) {
                presentAlertIngredients(msg: "No has seleccionado algun ingrediente")
                return false
            }
        }
        return true
    }
    
}
