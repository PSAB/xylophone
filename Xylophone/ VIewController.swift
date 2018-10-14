//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    var audioPlayer1 = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var audioPlayer3 = AVAudioPlayer()
    var audioPlayer4 = AVAudioPlayer()
    var audioPlayer5 = AVAudioPlayer()
    var audioPlayer6 = AVAudioPlayer()
    var audioPlayer7 = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //access sound files
        let sound1 = Bundle.main.path(forResource: "note1", ofType: "wav")
         let sound2 = Bundle.main.path(forResource: "note2", ofType: "wav")
         let sound3 = Bundle.main.path(forResource: "note3", ofType: "wav")
         let sound4 = Bundle.main.path(forResource: "note4", ofType: "wav")
         let sound5 = Bundle.main.path(forResource: "note5", ofType: "wav")
         let sound6 = Bundle.main.path(forResource: "note6", ofType: "wav")
         let sound7 = Bundle.main.path(forResource: "note7", ofType: "wav")
        
        do {
            audioPlayer1 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound1!))
            audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2!))
            audioPlayer3 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound3!))
            audioPlayer4 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound4!))
            audioPlayer5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound5!))
            audioPlayer6 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound6!))
            audioPlayer7 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound7!))
        }
        catch {
            print(error)
        }
        
    }



    @IBAction func notePressed(_ sender: UIButton) {
        // sender is the button that triggers the IBAction
//        print(sender.tag)
        switch sender.tag {
        case 1:
            print("play red key")
            audioPlayer1.play()
        case 2:
            print("play orange key")
            audioPlayer2.play()
        case 3:
            print("play yellow key")
            audioPlayer3.play()
        case 4:
            print("play light green key")
            audioPlayer4.play()
        case 5:
            print("play dark green key")
            audioPlayer5.play()
        case 6:
            print("play blue key")
            audioPlayer6.play()
        case 7:
            print("play purple key")
            audioPlayer7.play()
        default:
            print("unable to play sounds")
        }
        
        
    }
    
  

}

