//
//  SecondViewController.swift
//  Homework 8
//
//  Created by Дмитрий Соколовский on 23.03.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var circles: [UIView] = []
     
        // MARK: IBActions
        
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let pointX = sender.location(in: view).x - 25
        let pointY = sender.location(in: view).y - 25
        
        for index in 0..<circles.count {
            let leftEdge = circles[index].frame.origin.x
            let rightEdge = circles[index].frame.origin.x + 50
            let topEdge = circles[index].frame.origin.y
            let bottomEdge = circles[index].frame.origin.y + 50
            
            if pointX > leftEdge,
               pointX < rightEdge,
               pointY > topEdge,
               pointY < bottomEdge {
                circles[index].removeFromSuperview()
                circles.remove(at: index )
                return
            }
        }
        
        // MARK: Public methods
        
        let circle = UIView()
        circle.backgroundColor = .red
        circle.frame = CGRect(x: sender.location(in: view).x - 25, y: sender.location(in: view).y - 25, width: 50, height: 50)
        circle.layer.cornerRadius = 25
        circles.append(circle)
        view.addSubview(circle)
    }
}

