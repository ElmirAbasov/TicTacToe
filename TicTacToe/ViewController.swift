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
    // Placing a player on the board
    var currentPlayer = ""
    //TODO: Set up rules of the game
    var rules = [[0, 1, 2],[3,4,5],
                 [6, 7, 8],[0,3,6],
                 [1, 4, 7],[2,5,8],
                 [0, 4, 8],[2,4,6]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //testing board
        loadBoard()
        print(board)
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let index = buttons.index(of: sender)!
       // print(index)
        
        
        //Setting up so u cant click twice on the same button
        if !board[index].isEmpty {
            return
        }
        
        if currentPlayer == "X" {
            sender.setTitle("X", for: .normal)
            currentPlayer = "O"
            board[index] = "X"
        }else{
            sender.setTitle("O", for: .normal)
            currentPlayer = "X"
            board[index] = "O"
            
        }
        whoWins()
        
    }
    
    func whoWins() {
        for rule in rules {
          let playerat0 = board[rule[0]]
            let playerat1 = board[rule[1]]
            let playerat2 = board[rule[2]]
            
            if playerat0 == playerat1,
               playerat1 == playerat2,
               !playerat0.isEmpty {
                print ("Winner is \(playerat0)")
            }
        }
    }
    
    // Initialize the board
    //size of the board the size of the buttons
    func loadBoard(){
        for i in 0..<buttons.count {
            board.append("")
        }
    }
    
}

