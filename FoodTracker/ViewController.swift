//
//  ViewController.swift
//  FoodTracker
//
//  Created by Amir Fahmideh on 2/17/18.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var lblMealTitle: UILabel!
    @IBOutlet var txtMealTitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtMealTitle.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    
    }
    //Mark UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtMealTitle.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        lblMealTitle.text = txtMealTitle.text
    }
    
    @IBAction func setMealNameTitle(_ sender: UIButton) {
        lblMealTitle.text = "Default Label"
    }

}

