//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Nick Krasnitskiy on 07.04.2021.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let realLogin = login else {return}
        label.text = "Hello, \(realLogin)"
    }
    
    @IBAction func goBackPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    

}
