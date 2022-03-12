//
//  SecondViewController.swift
//  SwipeGestureRecognizer
//
//  Created by Bhumika Hirapara on 2/16/22.
//

import UIKit

class SecondViewController: UIViewController {

//    SwipeGesture using Storyboard
    
    @IBOutlet weak var directionLabel: UILabel!
    @IBOutlet weak var centerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        centerView.layer.masksToBounds = true
        centerView.layer.cornerRadius = 16
    }

    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        
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
