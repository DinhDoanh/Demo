//
//  ViewController.swift
//  Game Bài Cào
//
//  Created by Đình Doanh on 9/23/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBAction func btRut(_ sender: Any) {
        var labai = bobai.count
        
        var rd = Int.random(in: 0...labai)
        var namecard = bobai[rd]
        img1.image = UIImage(named: namecard)
        bobai.remove(at: rd)
        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        namecard = bobai[rd]
        img2.image = UIImage(named: namecard)
        bobai.remove(at: rd)

        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        namecard = bobai[rd]
        img3.image = UIImage(named: namecard)
        bobai.remove(at: rd)
        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        namecard = bobai[rd]
        img4.image = UIImage(named: namecard)
        bobai.remove(at: rd)
        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        namecard = bobai[rd]
        img5.image = UIImage(named: namecard)
        bobai.remove(at: rd)

        labai = bobai.count
        rd = Int.random(in: 0...labai)
        namecard = bobai[rd]
        img6.image = UIImage(named: namecard)
        bobai.remove(at: rd)

    }
    
    var bobai = ["1_c.png", "1_r.png", "1_ch.png", "1_b.png",
                 "2_c.png", "2_r.png", "2_ch.png", "2_b.png",
                 "3_c.png", "3_r.png", "3_ch.png", "3_b.png",
                 "4_c.png", "4_r.png", "4_ch.png", "4_b.png",
                 "5_c.png", "5_r.png", "5_ch.png", "5_b.png",
                 "6_c.png", "6_r.png", "6_ch.png", "6_b.png",
                 "7_c.png", "7_r.png", "7_ch.png", "7_b.png",
                 "8_c.png", "8_r.png", "8_ch.png", "8_b.png",
                 "9_c.png", "9_r.png", "9_ch.png", "9_b.png",
                 "10_c.png", "10_r.png", "10_ch.png", "10_b.png",
                 "11_c.png", "11_r.png", "11_ch.png", "11_b.png",
                 "12_c.png", "12_r.png", "12_ch.png", "12_b.png",
                 "13_c.png", "13_r.png", "13_ch.png", "13_b.png"]
    
    
    let bocaiConst = ["1_c.png", "1_r.png", "1_ch.png", "1_b.png",
                      "2_c.png", "2_r.png", "2_ch.png", "2_b.png",
                      "3_c.png", "3_r.png", "3_ch.png", "3_b.png",
                      "4_c.png", "4_r.png", "4_ch.png", "4_b.png",
                      "5_c.png", "5_r.png", "5_ch.png", "5_b.png",
                      "6_c.png", "6_r.png", "6_ch.png", "6_b.png",
                      "7_c.png", "7_r.png", "7_ch.png", "7_b.png",
                      "8_c.png", "8_r.png", "8_ch.png", "8_b.png",
                      "9_c.png", "9_r.png", "9_ch.png", "9_b.png",
                      "10_c.png", "10_r.png", "10_ch.png", "10_b.png",
                      "11_c.png", "11_r.png", "11_ch.png", "11_b.png",
                      "12_c.png", "12_r.png", "12_ch.png", "12_b.png",
                      "13_c.png", "13_r.png", "13_ch.png", "13_b.png"]
    
    @IBAction func btReset(_ sender: Any) {
        bobai = bocaiConst
        
        img1.image = UIImage(named: "up.png")
        img2.image = UIImage(named: "up.png")
        img3.image = UIImage(named: "up.png")
        img4.image = UIImage(named: "up.png")
        img5.image = UIImage(named: "up.png")
        img6.image = UIImage(named: "up.png")

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
}

