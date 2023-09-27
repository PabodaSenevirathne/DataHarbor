//
//  ViewController.swift
//  DataHarbor
//
//  Created by user234693 on 9/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var country: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var addText: UIButton!
    
    
    @IBOutlet weak var submitText: UIButton!
    @IBOutlet weak var systemMessages: UILabel!
    
    @IBOutlet weak var clearText: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstName.placeholder = "First Name"
        lastName.placeholder = "Last Name"
        country.placeholder = "Country"
        age.placeholder = "Age"
    }
    
    
    @IBAction func addText(_ sender: UIButton) {
        let firstName = firstName.text ?? ""
        let lastName = lastName.text ?? ""
        let country = country.text ?? ""
        let age = age.text ?? ""
        let fullName  = firstName + " " + lastName
        let userDetails = "Full Name : \(fullName)\nCountry : \(country)\nAge : \(age)\n\n"
        textView.text.append(userDetails)
    }
    
    
    
    @IBAction func submitText(_ sender: UIButton) {
        if firstName.text?.isEmpty == true ||
            lastName.text?.isEmpty == true ||
            country.text?.isEmpty == true ||
            age.text?.isEmpty == true {
            systemMessages.text = "Complete the missing info!"
        }else{
            systemMessages.text = "Successfully Submitted!"
        }
            
    }
    
    @IBAction func clearText(_ sender: UIButton) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        textView.text = ""
    }
    
    
    
    
    

}

