//
//  ViewController.swift
//  MyAudio
//
//  Created by Đình Doanh on 10/10/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit
import AVFoundation //Import để sử dụng AVAudioPlayer
class ViewController: UIViewController {
    
    //AVAudioPlayer để điều khiển audio
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Lấy đường dẫn file audio
        guard let path = Bundle.main.path(forResource: "If_I_Had_a_Chicken.mp3", ofType: nil) else {
            return
        }
        
        //Tạo url từ đường dẫn
        guard let url = URL(string: path) else {
            return
        }
        
        //Set đường dẫn audio cho AVAudioPlayer
        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            //Error
        }
    }

    //Play audio
    @IBAction func playButton_clicked(_ sender: Any) {
        player.play()
    }
    
    //Pause audio
    @IBAction func pauseButton_clicked(_ sender: Any) {
        player.pause()
    }
    
    //Stop audio
    @IBAction func stopButton_clicked(_ sender: Any) {
        player.stop()
    }
}
