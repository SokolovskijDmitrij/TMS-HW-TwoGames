//
//  ThirdViewController.swift
//  Homework 8
//
//  Created by Дмитрий Соколовский on 23.03.22.
//

import UIKit

class ThirdViewController: UIViewController {

    // MARK: Public properties
    
    let circleViewWidth: CGFloat = 50
    let circleViewHeight: CGFloat = 50
    let step = CGFloat(15)
    let edge: CGFloat = 40
    
    var minY: CGFloat = 0
    var minX: CGFloat = 0
    var maxY: CGFloat = 0
    var maxX: CGFloat = 0
    
    // MARK: IBOutlets
    
    @IBOutlet var circleView: UIView!
    
    // MARK: IBAction
    
    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .down:
            circleView.frame.origin.y += 10
        case .up:
            circleView.frame.origin.y -= 10
        case .left:
            circleView.frame.origin.x -= 10
        case .right:
            circleView.frame.origin.x += 10
        default:
            break
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupSubviews()
    }
    
    // MARK: Public methods
    
    func setupSubviews() {
        let view = self.view.bounds
        let superViewWidth = view.width
        let superViewHeight = view.height
        
        minX = edge
        minY = edge
        maxY = superViewHeight - circleViewHeight - edge
        maxX = superViewWidth - circleViewWidth - edge
        
        circleView.frame = CGRect(x: superViewWidth / 2 - circleViewWidth / 2,
                                  y: superViewHeight / 2 - circleViewHeight / 2,
                                  width: circleViewWidth,
                                  height: circleViewHeight)
        circleView.backgroundColor = .red
        circleView.layer.cornerRadius = circleViewHeight / 2
    }
}



