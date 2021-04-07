//
//  ViewController.swift
//  PassDataProject
//
//  Created by Nick Krasnitskiy on 06.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSeque", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else {return}
        guard let svc = segue.source as? SecondViewController else {return}
        resultLabel.text = svc.label.text
    }
    
    // Hide keyboard by touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc =  segue.destination as? SecondViewController else {return}
        dvc.login = loginTextField.text
    }
}

