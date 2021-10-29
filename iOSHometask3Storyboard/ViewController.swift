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
    @IBOutlet weak var botomConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scaleButton.superview!.bringSubviewToFront(scaleButton)
    }
    
    @IBAction func scaleSuperview(_ sender: UIButton) {
        let horizontalConstant: CGFloat
        let verticalConstant: CGFloat
        
        if(scaleMultiplier.isEqual(to: 1.0)){
            scaleMultiplier = 0.7;
            let indent = (1 - scaleMultiplier)/2
            horizontalConstant = view.frame.size.width * indent
            verticalConstant = view.frame.size.height * indent
        } else {
            scaleMultiplier = 1.0;
            horizontalConstant = 0
            verticalConstant = 0
        }
        topConstraint.constant = verticalConstant
        botomConstraint.constant = verticalConstant
        trailingConstraint.constant = horizontalConstant
        leadingConstraint.constant = horizontalConstant
        //        Это почему-то не работает в связке со storyboard. Работает только когда constraints in code.
        //        contentView.transform = CGAffineTransform.init(scaleX: scaleMultiplier, y: scaleMultiplier)
    }
}
