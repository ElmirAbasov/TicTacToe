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
            let player1 = board[rule[0]]
            let player2 = board[rule[1]]
            let player3 = board[rule[2]]
            
            if player1 == player2,
               player2 == player3,
             //  player3 == player4,
               !player1.isEmpty {
                print ("Winner is \(player2)")
                showAlert(msg: "Well played \(player3) you win!")
            }
        }
        //TODO: Draw condition
        if !board.contains("") {
            showAlert(msg: "Tie!")
        }
    }
    
    //TODO: Set up an alert for when a user wins
    
    func showAlert(msg: String) {
        let alert = UIAlertController(title: "Success", message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            self.reset()
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    //TODO: Set up a function to reset the game removing all action and restarting
    func reset(){
        board.removeAll()
        loadBoard()
        
        for button in buttons {
            button.setTitle(nil, for: .normal)
        }
    }
    
    // Initialize the board
    //size of the board the size of the buttons
    func loadBoard(){
        for _ in 0..<buttons.count {
            board.append("")
        }
    }
    
}

