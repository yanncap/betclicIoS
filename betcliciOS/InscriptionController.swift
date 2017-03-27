//
//  ViewController.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import Foundation
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
   
    // on récupère les valeurs des champs
    
    let firstname = self.firstnameText.text!
    let lastname = self.lastnameText.text!
    let birthdate = self.birthdateText.text!
    let email = self.emailText.text!
    let password = self.passwordText.text!

    
    // on valide la bonne saisie des données
    guard !email.isEmpty else {
        // on affiche une alert si une erreur est présente dans le nom du jeu
        let alert = UIAlertController(
            title: "Add an email",
            message: "email is required",
            preferredStyle: UIAlertControllerStyle.actionSheet
        )
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        // on arrrête l'exécution ici
        return
    }
    
    // on crée une nouvelle instance de User avec les données saisies

//    newUser.firstname = firstname
//    newUser.lastname = lastname
//    newUser.birthdate = birthdate
//    newUser.email = email
//    newUser.password = password
        
    let newUser = User(firstname: firstname, lastname: lastname, birthdate: birthdate, email: email, password: password)
        
    // on informe notre eventuel delegate que l'on vient de saisie un utilisateur
    // self.delegate?.didAddUser(newUser)
    
    // On ferme notre modale en appelant le segue d'exit ...
    self.performSegue(withIdentifier: "closeFormSegue", sender: nil)
    // ... ou on ferme notre ViewController avec dismiss
    // ne fonctionne que si on est en modale
    // self.dismiss(animated: true, completion: nil)
    }
    
}



