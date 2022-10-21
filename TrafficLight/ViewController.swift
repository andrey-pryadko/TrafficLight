//
//  ViewController.swift
//  TrafficLight
//
//  Created by Andrey Pryadko on 21/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCircle: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstCircle.layer.cornerRadius = 65
        
    }


}

