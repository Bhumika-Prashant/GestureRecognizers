//
//  PinchUsinIOSAcademyViewController.swift
//  PinchGestureRecognizer
//
//  Created by Bhumika Hirapara on 2/16/22.
//

import UIKit

class PinchUsinIOSAcademyViewController: UIViewController {
    
//    private let myView: UIView = {
//        let myView = UIView()
//        myView.backgroundColor = .systemPurple
//        return myView
//    }()
    
    private let myView = UIView()
    private let size: CGFloat = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(myView)
        myView.isUserInteractionEnabled = true
        myView.backgroundColor = .systemPurple
        myView.frame = CGRect(x: 0, y: 0, width: size, height: size)
        myView.center = view.center
        
        addGesture()
    }
    
    private func addGesture() {
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(didPinch(_:)))
        myView.addGestureRecognizer(pinchGesture)
    }
    
    @objc private func didPinch(_ gesture: UIPinchGestureRecognizer) {
        if gesture.state == .changed {
            let scale = gesture.scale
//            print(scale)
            myView.frame = CGRect(x: 0, y: 0, width: size * scale, height: size * scale)
            myView.center = view.center
        }
    }
}
