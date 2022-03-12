//
//  SecondViewController.swift
//  PinchGestureRecognizer
//
//  Created by Bhumika Hirapara on 2/16/22.
//

import UIKit

class SecondViewController: UIViewController {

//    PinchGesture using Storyboard
    
    @IBOutlet var pinchGesture: UIPinchGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pinchGestureAction(_ sender: UIPinchGestureRecognizer) {
        
        guard let gestureView = pinchGesture.view else {
            return
        }
        gestureView.transform = gestureView.transform.scaledBy(x: pinchGesture.scale, y: pinchGesture.scale)
        pinchGesture.scale = 1
        
    }
   
}
