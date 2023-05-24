//
//  ViewController.swift
//  Login
//
//  Created by Betel on 4/10/23.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var forgotUsername: UIButton!
    
    
    
    @IBAction func forgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)

    }
    
    
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
        guard let sender = sender as? UIButton else { return }

        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }
    
    
}

