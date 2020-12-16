//
//  ViewController.swift
//  TicTacToe
//
//  Created by Elmir Abasov on 2020-12-15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
   //TODO: creating a board
     var board = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //testing board
        loadBoard()
        print(board)
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let index = buttons.index(of: sender)!
        print(index)
    }
    
    // Initialize the board
    //size of the board the size of the buttons
    func loadBoard(){
        for i in 0..<buttons.count {
            board.append("")
        }
    }
    
}

