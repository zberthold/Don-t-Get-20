//
//  ViewController.swift
//  Don't Get 20
//
//  Created by Zoe Berthold on 7/6/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = ""
    var props = Properties()
    var counter = 0
    var numberNow = 0
    var winner = ""
    @IBOutlet weak var whichPlayer: UILabel!
    @IBOutlet weak var currentNumber: UILabel!
    @IBOutlet weak var dontGetNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = props.backgroundcolor
        dontGetNumber.text = "Don't Get \(props.dontReach)!"
        whichPlayer.text = "\(props.name1)'s turn"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func switchTurn(){
        counter += 1
        let nameArray = [props.name1, props.name2]
        var forCounter = counter % 2
        whichPlayer.text = "\(nameArray[forCounter])'s turn"
        numberNow = Int(currentNumber.text!)!
    }
    
    func whoWon(){
        if counter % 2 == 0{
            winner = props.name1
        }
        else {
            winner = props.name2
        }
    }
    
    func checkForEnd(){
        if numberNow >= props.dontReach{
            whoWon()
            let alert = UIAlertController(title: "\(winner) won!", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Play Again", style: .default) { (action) in
                self.currentNumber.text = "0"
                self.counter = 0
                self.whichPlayer.text = "\(self.props.name1)'s turn"
                self.numberNow = 0
            }
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func addTwo(_ sender: Any) {
        numberNow += 2
        currentNumber.text = String(numberNow)
        switchTurn()
        checkForEnd()
        
    }
    
    @IBAction func addOne(_ sender: Any) {
        numberNow += 1
        currentNumber.text = String(numberNow)
        switchTurn()
        checkForEnd()
        
    }
    
    @IBAction func reset(_ sender: Any) {
        self.currentNumber.text = "0"
        self.counter = 0
        self.whichPlayer.text = "\(self.props.name1)'s turn"
        self.numberNow = 0
    }
    
    
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let dvc = segue.destination as! IntroScreen
    
    }

}

