//
//  ViewController.swift
//  PizzaCreacion
//
//  Created by Simon Gonzalez on 4/3/17.
//  Copyright © 2017 Galpa Services. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerSizePizza: UIPickerView!
    
    let sizePizzaData = ["Pequeña", "Mediana", "Grande"]
    var sizePizzaSelected = ""
    var pizza = Pizza()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerSizePizza.dataSource = self;
        self.pickerSizePizza.delegate = self;
        sizePizzaSelected = sizePizzaData[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        pizza.size = sizePizzaSelected;
        let sigVista = segue.destination as! ViewControllerMasa
        sigVista.pizza = pizza
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sizePizzaData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sizePizzaData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sizePizzaSelected = sizePizzaData[row]
    }
    
}

