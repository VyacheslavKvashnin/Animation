//
//  ViewController.swift
//  Animation
//
//  Created by Вячеслав Квашнин on 23.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewRed: UIView!
    
    var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        UIView.animate(withDuration: 2.0) {
//            self.viewRed.center = self.view.center
//            self.viewRed.transform = CGAffineTransform(rotationAngle: .pi / 2)
//                .scaledBy(x: 2, y: 2).translatedBy(x: 0, y: -50)
//        }
        
//        UIView.animate(withDuration: 2) {
//            self.viewRed.center = self.view.center
//            self.viewRed.transform = CGAffineTransform(rotationAngle: .pi / 2)
//                .scaledBy(x: 2, y: 2).translatedBy(x: 0, y: -50)
//        } completion: { _ in
//            UIView.animate(withDuration: 2.0) {
//                self.viewRed.transform = .identity
//            }
//        }
        
        viewRed.center = self.view.center
        
//        UIView.animateKeyframes(withDuration: 3.0,
//                                delay: 0.2,
//                                options: [.calculationModeLinear]) {
//            self.viewRed.frame.origin.x = self.view.bounds.width
//
//            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.5) {
//                self.viewRed.alpha = 0.0
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.7) {
//                self.viewRed.backgroundColor = .blue
//            }
//        } completion: { _ in }
        
        
//        UIView.animate(withDuration: 3.0,
//                       delay: 0.3,
//                       usingSpringWithDamping: 0.5,
//                       initialSpringVelocity: 1.0,
//                       options: .curveEaseInOut) {
//            self.viewRed.center = self.view.center
//        } completion: { _ in }

        
        animator = UIViewPropertyAnimator(duration: 3.0,
                                          curve: .easeInOut,
                                          animations: {
            self.viewRed.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            self.viewRed.backgroundColor = .cyan
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animator.startAnimation()
    }
}

