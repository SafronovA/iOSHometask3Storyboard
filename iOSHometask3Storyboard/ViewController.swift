//
//  ViewController.swift
//  iOSHometask3Storyboard
//
//  Created by Aliaksei Safronau EPAM on 18.10.21.
//

import UIKit

class ViewController: UIViewController {

    private var scaleMultiplier: CGFloat = 1.0

    @IBOutlet weak var scaleButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scaleButton.superview!.bringSubviewToFront(scaleButton)
    }


    @IBAction func scaleSuperview(_ sender: UIButton) {
        if(scaleMultiplier.isEqual(to: 1.0)){
            scaleMultiplier = 0.7;
        } else {
            scaleMultiplier = 1.0;
        }
        contentView.transform = CGAffineTransform.init(scaleX: scaleMultiplier, y: scaleMultiplier)
    }
    
}
