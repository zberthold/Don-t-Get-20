//
//  IntroScreen.swift
//  Don't Get 20
//
//  Created by Zoe Berthold on 7/6/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class IntroScreen: UIViewController {

    @IBOutlet weak var playerOneName: UITextField!
    @IBOutlet weak var playerTwoName: UITextField!
    @IBOutlet weak var color1: UIButton!
    @IBOutlet weak var color2: UIButton!
    @IBOutlet weak var color3: UIButton!
    @IBOutlet weak var color4: UIButton!
    @IBOutlet weak var dontReachNumber: UILabel!
    var there = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkWord (word: String) {
        if word == "" {
            there = false
        }
    }
    
    @IBAction func increaseDontReach(_ sender: Any) {
    }
    
    @IBAction func decreaseDontReach(_ sender: Any) {
    }
    
    @IBAction func startGame(_ sender: Any) {
        there = true
        checkWord(word: playerOneName.text!)
        checkWord(word: playerTwoName.text!)
        if there != false {
            performSegue(withIdentifier: "segueofrhea", sender: nil)
        }
    }
    

}
