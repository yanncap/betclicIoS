//
//  ViewController.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import UIKit

class InscriptionController: UIViewController {

    @IBOutlet weak var lastnameText: UITextField!
    @IBOutlet weak var firstnameText: UITextField!
    @IBOutlet weak var birthdateText: UITextField!
    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var validateEmailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var validatePasswordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func Signup(_ sender: Any) {
    }

}

