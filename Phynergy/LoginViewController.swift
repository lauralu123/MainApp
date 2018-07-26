//
//  LoginViewController.swift
//  Phynergy
//
//  Created by Laura Lu on 7/22/18.
//  Copyright © 2018 triolabs. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginButton(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailOutlet.text!, password: passwordOutlet.text!, completion: {(user, err)
            
        in
            if err != nil
            {
                print(err?.localizedDescription as Any)
                
            }
            else
            {
                print("User SignIn")
                self.performSegue(withIdentifier: "loginSuccess", sender: self)
            }
            
            
            
            
            
        }
)
    }
}
