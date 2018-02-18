//
//  ViewController.swift
//  FoodTracker
//
//  Created by Amir Fahmideh on 2/17/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblMealTitle: UILabel!
    @IBOutlet var txtMealTitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func setMealNameTitle(_ sender: UIButton) {
        lblMealTitle.text = "Default Label"
    }
    
}

