//
//  ViewController.swift
//  Musicque
//
//  Created by Đình Doanh on 10/9/20.
//  Copyright © 2020 Doanh. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var player : AVAudioPlayer?
    
    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tapButton(_ sender: Any) {
        if let player = player, player.isPlaying{
            // stop
            myButton.setTitle("play", for: .normal)
            player.stop()
            
        }
        else{
            // set up player, and play
            myButton.setTitle("Stop", for: .normal) 
            let urlString = Bundle.main.path(forResource: "If_I_Had_a_Chicken", ofType: "mp3")
            
            do{
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                guard let player = player else {
                    return
                }
                player.play()
            }
            catch{
                print("Something went wrong")
            }
        }
        
    }
    
}

