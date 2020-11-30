//
//  ViewController.swift
//  UIPanGesture VS UIRotationGesture VS UIPinchGesture
//
//  Created by Đình Doanh on 10/4/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lastRotation: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//UIPanGesture kéo thả img
    
    @IBAction func handleGesture(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
        if let view = sender.view{
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        }
        sender.setTranslation((CGPoint.zero), in: self.view)
    }
    
//UIRotationGesture xoay img
    
    @IBAction func handleRotation(_ sender: UIRotationGestureRecognizer) {
        var originalRotation = CGFloat()
        if sender.state == .began{
            print("Began")
            sender.rotation = lastRotation
            originalRotation = sender.rotation
        }else if sender.state == .changed{
            print("changing")
            let newRottation = sender.rotation + originalRotation
            sender.view?.transform = CGAffineTransform(rotationAngle: newRottation)
        }else if sender.state == .ended {
            print("end")
            lastRotation = sender.rotation
        }
        
    }
//    UIPinchGesture
    
    @IBAction func handleGesture1(_ sender: UIPinchGestureRecognizer) {
        
        if sender.state == .changed{
            sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
            sender.scale = 1.0
        }
        
    }
    
}

