//
//  ViewController.swift
//  TapGestureRecognizer
//
//  Created by Bhumika Hirapara on 2/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var isGanapatiBappa = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImageView.isUserInteractionEnabled = true
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        myImageView.addGestureRecognizer(tapGestureRecognizer)
        
    }

    @objc func changePic() {
        
//        if myImageView.image == UIImage(named: "SaraswatiMaa") {
//            myImageView.image = UIImage(named: "GanapatiBappa")
//            myLabel.text = "GanapatiBappa"
//        } else {
//            myImageView.image = UIImage(named: "SaraswatiMaa")
//            myLabel.text = "SaraswatiMaa"
//        }
        
        if isGanapatiBappa {
            myImageView.image = UIImage(named: "SaraswatiMaa")
            myLabel.text = "SaraswatiMaa"
            isGanapatiBappa = false
        } else {
            myImageView.image = UIImage(named: "GanapatiBappa")
            myLabel.text = "GanapatiBappa"
            isGanapatiBappa = true
        }
        
    }

}

