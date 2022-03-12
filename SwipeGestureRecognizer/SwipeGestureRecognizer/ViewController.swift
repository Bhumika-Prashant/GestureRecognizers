//
//  ViewController.swift
//  SwipeGestureRecognizer
//
//  Created by Bhumika Hirapara on 2/16/22.
//

import UIKit

class ViewController: UIViewController {
    
//    SwipeGesture Programmatically

    let centerView = UIView()
    let directionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerView.frame = CGRect(x: 16, y: 200, width: view.frame.width - 32, height: 400)
        centerView.layer.masksToBounds = true
        centerView.layer.cornerRadius = 16
        centerView.backgroundColor = .red
        view.addSubview(centerView)
        
        directionLabel.frame = CGRect(x: 16, y: 16, width: centerView.frame.width - 32, height: 384)
        directionLabel.text = "Welcome to SwiftHub"
        directionLabel.textColor = .white
        directionLabel.textAlignment = .center
        directionLabel.font = .boldSystemFont(ofSize: 30)
        centerView.addSubview(directionLabel)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipe(sender:)))
        swipeRight.direction = .right
        centerView.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipe(sender:)))
        swipeLeft.direction = .left
        centerView.addGestureRecognizer(swipeLeft)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipe(sender:)))
        swipeUp.direction = .up
        centerView.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipe(sender:)))
        swipeDown.direction = .down
        centerView.addGestureRecognizer(swipeDown)
        
    }

    @objc func swipe(sender: UISwipeGestureRecognizer) {
        
        switch sender.direction {
        case .right:
            directionLabel.text = "Direction Right"
            centerView.backgroundColor = .purple
        case .left:
            directionLabel.text = "Direction Left"
            centerView.backgroundColor = .cyan
        case .up:
            directionLabel.text = "Direction Up"
            centerView.backgroundColor = .yellow
        case .down:
            directionLabel.text = "Direction Down"
            centerView.backgroundColor = .blue
        default:
            directionLabel.text = ""
        }
    }

}

