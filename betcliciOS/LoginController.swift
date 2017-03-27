//
//  LoginController.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import Foundation
import UIKit

protocol LoginDelegate {
    func login(_ email : String, _ password : String)
}

class LoginController: UIViewController {
    
    var delegate : LoginDelegate?
   
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    var user = User()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func SignIn(_ sender: Any) {
        
    
        // on récupère les valeurs des champs
        let email = self.emailText.text!
        let password = self.passwordText.text!
        
        // on valide la bonne saisie des données
        guard !email.isEmpty else {
            let alert = UIAlertController(
                title: "Connexion",
                message: "Email is required",
                preferredStyle: UIAlertControllerStyle.actionSheet
            )
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        guard !password.isEmpty else {
            let alert = UIAlertController(
                title: "Connexion",
                message: "Password is required",
                preferredStyle: UIAlertControllerStyle.actionSheet
            )
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        // on informe notre eventuel delegate que l'on vient de saisie l'email et le password
        self.delegate?.login(email, password)
        
        let loginService = LoginService()
        
        
    loginService.login(email: email, password : password, callback: { user in
                    self.user.token = (user?.token)!
        
        if !self.user.token.isEmpty {
            let alert = UIAlertController(
                title: "Connexion",
                message: "Sucess",
                preferredStyle: UIAlertControllerStyle.actionSheet
            )
            print("successsssssssssss : " + alert.message!)
            //   alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            //   self.present(alert, animated: true, completion: nil)
            
        }else {
            let alert = UIAlertController(
                title: "Connexion",
                message: "Connexion error",
                preferredStyle: UIAlertControllerStyle.actionSheet
            )
            
            print("errrrrrrrrrrrrorr : " + alert.message!)
            
            // alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            // self.present(alert, animated: true, completion: nil)
            return
            
        }
       
            })
        
       
     
        
        
    }
    
}
