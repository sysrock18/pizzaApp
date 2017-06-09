//
//  ViewControllerMasa.swift
//  PizzaCreacion
//
//  Created by Simon Gonzalez on 6/6/17.
//  Copyright © 2017 Galpa Services. All rights reserved.
//

import UIKit

class ViewControllerMasa: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var pizza = Pizza()
    @IBOutlet weak var pickerFlourPizza: UIPickerView!
    let pickerFlourData = ["Delgada", "Crujiente", "Gruesa"]
    var flourPizzaSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.pickerFlourPizza.dataSource = self;
        self.pickerFlourPizza.delegate = self;
        flourPizzaSelected = pickerFlourData[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        pizza.flour = flourPizzaSelected;
        let sigVista = segue.destination as! ViewControllerCheese
        sigVista.pizza = pizza
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerFlourData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerFlourData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        flourPizzaSelected = pickerFlourData[row]
    }
    
}
