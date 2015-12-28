//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Mehmet Ragıp Altuncu on 27/12/15.
//  Copyright © 2015 MehmetAltuncu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var currentTaps = 0

    @IBOutlet weak var logoImage : UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton : UIButton!
    
    @IBOutlet weak var tapButton : UIButton!
    @IBOutlet weak var tapsLbl : UILabel!
    
    
    @IBAction func onPlayButtonPressed (sender: UIButton!){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            logoImage.hidden = true
            playButton.hidden = true
            howManyTapsTxt.hidden = true
        
            tapButton.hidden = false
            tapsLbl.hidden  = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
            
            
        }
    }
    
    
    @IBAction func tapButtonPressed (sender: UIButton!)  {
        
        
        
        currentTaps += 1
        updateTapsLbl()
        maxTaps = Int(howManyTapsTxt.text!)!
        
       if isGameOver() {
        
            restartGame()
        }

        
    }
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"

    }
    
    func isGameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            return true
        }
        return false
    }
    
    func restartGame() {
        
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        howManyTapsTxt.hidden = false
        
        tapButton.hidden = true
        tapsLbl.hidden  = true
    }
    
    

}

