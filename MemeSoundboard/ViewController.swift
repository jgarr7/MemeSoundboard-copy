//
//  ViewController.swift
//  MemeSoundboard
//
//  Created by Jaden Garrett on 7/8/18.
//  Copyright © 2018 Jaden Garrett. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    var memesounds = ["Nani!", "Wednesday", "Titanic", "dametucosita", "Pranked", "breakfast", "Nestle",  "Running"]
    var audioPlayer: AVAudioPlayer?
    
    func playSoundWithFileName(file: String, fileExt: String)-> Void {
        let audioSourceURL: URL!
        
        audioSourceURL = Bundle.main.url(forResource: file, withExtension: fileExt)
        
        if audioSourceURL == nil{
            print("No Audio")
        }
        else{
            do {
                audioPlayer = try AVAudioPlayer.init(contentsOf: audioSourceURL!)
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
            } catch{
                print(error)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func playSound(_ sender: UIButton) {
        let index = sender.tag
        let soundString = memesounds[index]
        playSoundWithFileName(file: soundString, fileExt: "mp3")
    }
    

}

