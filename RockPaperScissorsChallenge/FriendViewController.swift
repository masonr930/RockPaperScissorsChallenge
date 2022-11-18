//
//  FriendViewController.swift
//  RockPaperScissorsChallenge
//
//  Created by MASON ROZUMNY on 11/17/22.
//

import UIKit

class FriendViewController: UIViewController {

    var playerOne: String!
    var playerTwo: String!
    
    var wins1 = 0
    var wins2 = 0
    
    var loss1 = 0
    var loss2 = 0
    
    var ties1 = 0
    var ties2 = 0
    
    var p1choice = -1
    var p2choice = -1
    
    
    @IBOutlet weak var p1Label: UILabel!
    @IBOutlet weak var p2Label: UILabel!
    
    @IBOutlet weak var p1R: UILabel!
    @IBOutlet weak var p2R: UILabel!
    
    @IBOutlet weak var p1Record: UILabel!
    @IBOutlet weak var p2Record: UILabel!
    
    @IBOutlet weak var rock1Outlet: UIButton!
    @IBOutlet weak var paper1Outlet: UIButton!
    @IBOutlet weak var scissors1Outlet: UIButton!
    
    @IBOutlet weak var rock2Outlet: UIButton!
    @IBOutlet weak var paper2Outlet: UIButton!
    @IBOutlet weak var scissors2Outlet: UIButton!
    
    @IBOutlet weak var winnerOutlet: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        p1Label.text = "\(playerOne!) you pick first"
        p2Label.text = "\(playerTwo!) you pick second"

        p1R.text = "\(playerOne!)'s Record"
        p2R.text = "\(playerTwo!)'s Record"
        
        p1Record.text = "\(wins1)-\(loss1)-\(ties1)"
        p2Record.text = "\(wins2)-\(loss2)-\(ties2)"
    }
    
    //rock - 0
    //paper - 1
    //scissors - 2
    
    //win = 1
    //loss = -1
    //ties = 0
    
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
        p1Label.isHidden = true
        rock1Outlet.isHidden = true
        paper1Outlet.isHidden = true
        scissors1Outlet.isHidden = true
        
        p2Label.isHidden = false
        rock2Outlet.isHidden = false
        paper2Outlet.isHidden = false
        scissors2Outlet.isHidden = false
        
        p1choice = 0
        
        
    }
    @IBAction func paperButton(_ sender: UIButton)
    {
        p1Label.isHidden = true
        rock1Outlet.isHidden = true
        paper1Outlet.isHidden = true
        scissors1Outlet.isHidden = true
        
        p2Label.isHidden = false
        rock2Outlet.isHidden = false
        paper2Outlet.isHidden = false
        scissors2Outlet.isHidden = false
        
        p1choice = 1
        
    }
    @IBAction func scissorsButton(_ sender: UIButton)
    {
        p1Label.isHidden = true
        rock1Outlet.isHidden = true
        paper1Outlet.isHidden = true
        scissors1Outlet.isHidden = true
        
        p2Label.isHidden = false
        rock2Outlet.isHidden = false
        paper2Outlet.isHidden = false
        scissors2Outlet.isHidden = false
        
        p1choice = 2
        
    }
    
    
    
    @IBAction func rock2Button(_ sender: UIButton)
    {
        p2Label.isHidden = true
        rock2Outlet.isHidden = true
        paper2Outlet.isHidden = true
        scissors2Outlet.isHidden = true
        
        p2choice = 0

        var result = checkWinner(user: p1choice, cpu: p2choice)
        if result == 0
        {
            winnerOutlet.text = "You tied!"
            ties1 += 1
            ties2 += 1
        }
        else if result == 1
        {
            winnerOutlet.text = "\(playerOne!) wins!"
            wins1 += 1
            loss2 += 1
        }
        else
        {
            winnerOutlet.text = "\(playerTwo!) wins!"
            wins2 += 1
            loss1 += 1
        }
        
        p1Record.text = "\(wins1)-\(loss1)-\(ties1)"
        p2Record.text = "\(wins2)-\(loss2)-\(ties2)"
        
        p1Label.isHidden = false
        rock1Outlet.isHidden = false
        paper1Outlet.isHidden = false
        scissors1Outlet.isHidden = false
        
    }
    @IBAction func paper2Button(_ sender: UIButton)
    {
        p2Label.isHidden = true
        rock2Outlet.isHidden = true
        paper2Outlet.isHidden = true
        scissors2Outlet.isHidden = true
        
        p2choice = 1
        
        var result = checkWinner(user: p1choice, cpu: p2choice)
        if result == 0
        {
            winnerOutlet.text = "You tied!"
            ties1 += 1
            ties2 += 1
        }
        else if result == 1
        {
            winnerOutlet.text = "\(playerOne!) wins!"
            wins1 += 1
            loss2 += 1
        }
        else
        {
            winnerOutlet.text = "\(playerTwo!) wins!"
            wins2 += 1
            loss1 += 1
        }
        
        p1Record.text = "\(wins1)-\(loss1)-\(ties1)"
        p2Record.text = "\(wins2)-\(loss2)-\(ties2)"
        
        p1Label.isHidden = false
        rock1Outlet.isHidden = false
        paper1Outlet.isHidden = false
        scissors1Outlet.isHidden = false
    }
    @IBAction func scissors2Button(_ sender: UIButton)
    {
        p2Label.isHidden = true
        rock2Outlet.isHidden = true
        paper2Outlet.isHidden = true
        scissors2Outlet.isHidden = true
        
        p2choice = 2
        
        var result = checkWinner(user: p1choice, cpu: p2choice)
        if result == 0
        {
            winnerOutlet.text = "You tied!"
            ties1 += 1
            ties2 += 1
            
        }
        else if result == 1
        {
            winnerOutlet.text = "\(playerOne!) wins!"
            wins1 += 1
            loss2 += 1
        }
        else
        {
            winnerOutlet.text = "\(playerTwo!) wins!"
            wins2 += 1
            loss1 += 1
        }
        
        p1Record.text = "\(wins1)-\(loss1)-\(ties1)"
        p2Record.text = "\(wins2)-\(loss2)-\(ties2)"
        
        p1Label.isHidden = false
        rock1Outlet.isHidden = false
        paper1Outlet.isHidden = false
        scissors1Outlet.isHidden = false
    }
    
    

    

}
