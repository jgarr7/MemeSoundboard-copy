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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func naniTouched(_ sender: Any) {
        playSoundWithFileName(file: "Nani!", fileExt: "mp3")
    }
    


}

