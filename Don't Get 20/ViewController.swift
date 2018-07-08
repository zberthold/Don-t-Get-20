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
    @IBOutlet weak var whichPlayer: UILabel!
    @IBOutlet weak var currentNumber: UILabel!
    @IBOutlet weak var dontGetNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = props.backgroundcolor
        dontGetNumber.text = "Don't Get \(props.dontReach)!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        whichPlayer.text = props.name1
    }
    
    func switchTurn(){
        counter += 1
        let nameArray = [props.name1, props.name2]
        var forCounter = counter % 2
        whichPlayer.text = "\(nameArray[forCounter])"
        numberNow = Int(currentNumber.text!)!
    }
    
    func checkForEnd(){
        if numberNow >= props.dontReach{
            print("game over")
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
    }
    
    
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let dvc = segue.destination as! IntroScreen
    
    }

}

