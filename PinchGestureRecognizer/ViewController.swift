//
//  ViewController.swift
//  PinchGestureRecognizer
//
//  Created by Bhumika Hirapara on 2/16/22.
//

import UIKit

class ViewController: UIViewController {

//    PinchGesture Programmatically
    
    let imageView = UIImageView()
    let pinchGesture = UIPinchGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
        imageView.image = #imageLiteral(resourceName: "GanapatiBappa")
        imageView.isUserInteractionEnabled = true
        view.addSubview(imageView)
        
        imageView.center = view.center
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        pinchGesture.addTarget(self, action: #selector(pinchAction))
        imageView.addGestureRecognizer(pinchGesture)
        
    }

    @objc func pinchAction() {
        guard let gestureView = pinchGesture.view else {
            return
        }
        gestureView.transform = gestureView.transform.scaledBy(x: pinchGesture.scale, y: pinchGesture.scale)
        pinchGesture.scale = 1
    }

}

