//
//  ViewController.swift
//  FoodTracker
//
//  Created by Amir Fahmideh on 2/17/18.
//

import UIKit
import os.log

class MealViewController: UIViewController,UITextFieldDelegate
,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet var txtMealTitle: UITextField!
    @IBOutlet var mealImage: UIImageView!
    
    @IBOutlet var ratingController: RatingControl!
    
    @IBOutlet var saveButton: UIBarButtonItem!
    var meal:Meal?
    
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
      
    }
    
    
    @IBAction func viewImageTouchControl(_ sender: UITapGestureRecognizer) {
        txtMealTitle.resignFirstResponder()
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        mealImage.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func setMealNameTitle(_ sender: UIButton) {
       
    }
    
    //Mark Navigation
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        /// === Identity operator
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        let name = txtMealTitle.text ?? ""
        let photo = mealImage.image
        let rating = ratingController.rating
        
        meal = Meal(name: name, photo: photo, rating: rating)
    }
    

}

