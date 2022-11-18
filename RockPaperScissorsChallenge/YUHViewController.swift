//
//  YUHViewController.swift
//  RockPaperScissorsChallenge
//
//  Created by MASON ROZUMNY on 11/17/22.
//

import UIKit

class YUHViewController: UIViewController {

    
    @IBOutlet weak var playerOneOutlet: UITextField!
    @IBOutlet weak var playerTwoOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func continueButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "toGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if playerOneOutlet.text != nil && playerTwoOutlet.text != nil
        {
            if segue.identifier == "toGame"
            {
                let nvc = segue.destination as! FriendViewController
                nvc.playerOne = playerOneOutlet.text
                nvc.playerTwo = playerTwoOutlet.text
            }
        }
    }
    

   

}
