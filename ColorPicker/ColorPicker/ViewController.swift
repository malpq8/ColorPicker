//
//  ViewController.swift
//  ColorPicker
//
//  Created by Mike Louissaint on 11/17/17.
//  Copyright © 2017 Mike Louissaint. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
    
    
{
    
    @IBOutlet weak var Pickerview: UIPickerView!
    @IBOutlet weak var Label: UILabel!
    
   var colors = ["red", "orange", "yellow", "green", "blue", "purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
   
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.red;
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange;
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.yellow;
        }
        else if (row == 3)
        {
            self.view.backgroundColor = UIColor.green;
        }
        else if (row == 4)
        {
            self.view.backgroundColor = UIColor.blue;
        }
        else if (row == 5)
        {
            self.view.backgroundColor = UIColor.purple;
        }
        
        Label.text = colors[row] 
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

