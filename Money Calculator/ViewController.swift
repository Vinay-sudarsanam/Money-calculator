//
//  ViewController.swift
//  Money Calculator
//
//  Created by Vinay Sudarsanam on 2/13/17.
//  Copyright © 2017 Vinay Sudarsanam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var finalValue: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var segcontrol: UISegmentedControl!
    @IBOutlet weak var priceinput: UITextField!
    @IBAction func buttontapped(_ sender: AnyObject) {
        guard let bill = Double(priceinput.text!) else {
            return
        }

  

//identifies all items organized in storyboard
    var price:Double = bill
      //  var value: Int
        
    
        switch segcontrol.selectedSegmentIndex
        {
        case 0:
            //value = 0
            price = price * 0.25
            //makes one-fourth of given price when clicked
            finalValue.text = "\(price)"
        case 1:
           // value = 1
            price = price * 0.5
            //makes one-half of given price when clicked
            finalValue.text = "\(price)"
        default:
            break;
            
        }
    
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
