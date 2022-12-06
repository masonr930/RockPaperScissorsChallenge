//
//  CPUViewController.swift
//  RockPaperScissorsChallenge
//
//  Created by MASON ROZUMNY on 11/15/22.
//

import UIKit


class CPUViewController: UIViewController {
    
    var userChoice = -2
    var cpuChoice = -2
    
    var wins = 0
    var loss = 0
    var ties = 0
    
    @IBOutlet weak var winsOutlet: UILabel!
    @IBOutlet weak var tiesOutlet: UILabel!
    @IBOutlet weak var lossOutlet: UILabel!
    @IBOutlet weak var resultOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // 0 = rock
    // 1 = paper
    // 2 = scissors
    // -1 = loss
    // 0 = tie
    // 1 = win
    func checkWinner(user: Int, cpu: Int) -> Int
    {
        if user == cpu
        {
            return 0
        }
        else if user == 0 && cpu == 1
        {
            return -1
        }
        else if user == 0 && cpu == 2
        {
            return 1
        }
        else if user == 1 && cpu == 0
        {
            return 1
        }
        else if user == 1 && cpu == 2
        {
            return -1
        }
        else if user == 2 && cpu == 0
        {
            return -1
        }
        else if user == 2 && cpu == 1
        {
            return 1
        }
        else
        {
            return 0
        }
        
    }
    
    
    @IBAction func rockButton(_ sender: UIButton)
    {
        let cpuPick = Int.random(in: 0...2)
        let yuh = checkWinner(user: 0, cpu: cpuPick)
        
        if yuh == 1
        {
            wins += 1
            winsOutlet.text = String(wins)
            resultOutlet.text = "You win!"
            resultOutlet.backgroundColor = UIColor.green
        }
        else if yuh == -1
        {
            loss += 1
            lossOutlet.text = String(loss)
            resultOutlet.text = "You lose!"
            resultOutlet.backgroundColor = UIColor.red
        }
        else
        {
            ties += 1
            tiesOutlet.text = String(ties)
            resultOutlet.text = "You tied!"
            resultOutlet.backgroundColor = UIColor.gray
        }
        
    }
    
    @IBAction func paperButton(_ sender: UIButton)
    {
        let cpuPick = Int.random(in: 0...2)
        let yuh = checkWinner(user: 1, cpu: cpuPick)
        
        if yuh == 1
        {
            wins += 1
            winsOutlet.text = String(wins)
            resultOutlet.text = "You win!"
            resultOutlet.backgroundColor = UIColor.green
        }
        else if yuh == -1
        {
            loss += 1
            lossOutlet.text = String(loss)
            resultOutlet.text = "You lose!"
            resultOutlet.backgroundColor = UIColor.red
        }
        else
        {
            ties += 1
            tiesOutlet.text = String(ties)
            resultOutlet.text = "You tied!"
            resultOutlet.backgroundColor = UIColor.gray
        }
    }
        
        @IBAction func scissorsButton(_ sender: UIButton)
        {
            let cpuPick = Int.random(in: 0...2)
            let yuh = checkWinner(user: 2, cpu: cpuPick)
            
            if yuh == 1
            {
                wins += 1
                winsOutlet.text = String(wins)
                resultOutlet.text = "You win!"
                resultOutlet.backgroundColor = UIColor.green
            }
            else if yuh == -1
            {
                loss += 1
                lossOutlet.text = String(loss)
                resultOutlet.text = "You lose!"
                resultOutlet.backgroundColor = UIColor.red
            }
            else
            {
                ties += 1
                tiesOutlet.text = String(ties)
                resultOutlet.text = "You tied!"
                resultOutlet.backgroundColor = UIColor.gray
            }
        }
        
    }

