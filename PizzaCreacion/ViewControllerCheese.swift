//
//  ViewControllerCheese.swift
//  PizzaCreacion
//
//  Created by Simon Gonzalez on 6/6/17.
//  Copyright © 2017 Galpa Services. All rights reserved.
//

import UIKit

class ViewControllerCheese: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var pizza = Pizza()
    @IBOutlet weak var pickerCheesePizza: UIPickerView!
    let pickerCheeseData = ["Mozarela", "Cheddar", "Parmesano", "Sin Queso"]
    var cheesePizzaSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.pickerCheesePizza.dataSource = self;
        self.pickerCheesePizza.delegate = self;
        cheesePizzaSelected = pickerCheeseData[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        pizza.cheese = cheesePizzaSelected;
        let sigVista = segue.destination as! ViewControllerIngredients
        sigVista.pizza = pizza
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerCheeseData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerCheeseData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cheesePizzaSelected = pickerCheeseData[row]
    }

}
