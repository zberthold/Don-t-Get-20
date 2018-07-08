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
    var props = Properties()
    
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
    func colorClicked (x: Int, color: UIButton){
        let colors = [color1, color2, color3, color4]
        for button in colors {
            button!.layer.borderColor = UIColor.clear.cgColor
        }
        self.view.backgroundColor = color.backgroundColor
        color.frame = CGRect(x:Int((self.view.frame.size.width)/2) - x, y: 230, width: 30, height: 30)
        color.layer.borderWidth = 2.0
        color.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func colorOneClicked(_ sender: Any) {
        colorClicked(x: 135, color: color1)
    }
    
    @IBAction func colorTwoClicked(_ sender: Any) {
        colorClicked(x: 55, color: color2)
    }
    
    @IBAction func colorThreeClicked(_ sender: Any) {
        colorClicked(x: -25, color: color3)
    }
    
    @IBAction func colorFourClicked(_ sender: Any) {
        colorClicked(x: -105, color: color4)
    }
    
    @IBAction func increaseDontReach(_ sender: Any) {
        var number = Int(dontReachNumber.text!)!
        number += 1
        dontReachNumber.text = String(number)
    }
    
    @IBAction func decreaseDontReach(_ sender: Any) {
        if Int(dontReachNumber.text!)! > 1 {
            var number = Int(dontReachNumber.text!)!
            number -= 1
            dontReachNumber.text = String(number)
        }
    }
    
    @IBAction func startGame(_ sender: Any) {
        there = true
        checkWord(word: playerOneName.text!)
        checkWord(word: playerTwoName.text!)
        if there != false {
            performSegue(withIdentifier: "segueofrhea", sender: nil)
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let dvc = segue.destination as! ViewController
//
//
//    }
    

}
