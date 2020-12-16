//
//  ViewController.swift
//  TicTacToe
//
//  Created by Elmir Abasov on 2020-12-15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let index = buttons.index(of: sender)!
        print(index)
    }
    
}

