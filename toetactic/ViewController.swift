//
//  ViewController.swift
//  toetactic
//
//  Created by Rouse, Emerson - Student on 4/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    var x = 1
    var activePlayer = 1 //1 is for noughts, 2 is for crosses
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] //0 = empty, 1 = noughts, 2 = crosses
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    var xpositions = [9]
    var opositions = [9]

    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    
    @IBOutlet weak var winnerLabel: UILabel!
    //@IBOutlet weak var winnerLabel: UILabel!

    @IBAction func buttonPressed(_ sender: UIButton) {

        if gameState[sender.tag] == 0 {
            gameState[sender.tag] = activePlayer

            if activePlayer == 1 {
                sender.setImage(UIImage(named: "nought.png"), for: UIControl.State())
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "cross.png"), for: UIControl.State())
                activePlayer = 1
            }
        }

        for combination in winningCombinations {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                if gameState[combination[0]] == 1 {
                    winnerLabel.text = "Noughts has won!"
                } else {
                    winnerLabel.text = "Crosses has won!"
                }

                disableButtons()
                break
            }
        }

        if !gameState.contains(0) {
            winnerLabel.text = "It's a draw!"
        }

    }

    func disableButtons() {
        button0.isEnabled = false
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
        button4.isEnabled = false
        button5.isEnabled = false
        button6.isEnabled = false
        button7.isEnabled = false
        button8.isEnabled = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button0(_ sender: Any) {
        if x % 2 == 0 {
            button0.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button0.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 0")
        print(x)
        
        button0.isEnabled = false
        
    }
    @IBAction func button1(_ sender: Any) {
        if x % 2 == 0 {
            button1.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button1.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 1")
        print(x)
        
        button1.isEnabled = false
        
    }
    @IBAction func button2(_ sender: Any) {
        if x % 2 == 0 {
            button2.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button2.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 0")
        print(x)
        
        button2.isEnabled = false
    }
    @IBAction func button3(_ sender: Any) {
        if x % 2 == 0 {
            button3.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button3.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 0")
        print(x)
        
        button3.isEnabled = false
    }
    @IBAction func button4(_ sender: Any) {
        if x % 2 == 0 {
            button4.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button4.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 0")
        print(x)
        
        button4.isEnabled = false    }
    @IBAction func button5(_ sender: Any) {
        if x % 2 == 0 {
            button5.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button5.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 0")
        print(x)
        
        button5.isEnabled = false    }
    @IBAction func button6(_ sender: Any) {
        if x % 2 == 0 {
            button6.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button6.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 0")
        print(x)
        
        button6.isEnabled = false
    }
    @IBAction func button7(_ sender: Any) {
        if x % 2 == 0 {
            button7.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button7.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 0")
        print(x)
        
        button7.isEnabled = false
    }
    @IBAction func button8(_ sender: Any) {
        if x % 2 == 0 {
            button8.setImage(UIImage(named: "oimage2"), for: .normal)
        }else
        {
            button8.setImage(UIImage(named: "ximage2"), for: .normal)
        }
        
        x += 1
        print("pressed! 0")
        print(x)
        
        button8.isEnabled = false
    }
    
  
    

}
