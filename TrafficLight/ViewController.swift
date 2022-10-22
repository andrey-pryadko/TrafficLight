//
//  ViewController.swift
//  TrafficLight
//
//  Created by Andrey Pryadko on 21/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLights()

        
    }
    
    private func setupLights() {
        
        redLightView.layer.cornerRadius = 65
        redLightView.backgroundColor = UIColor.red
        redLightView.alpha = 0.3
        
        yellowLightView.layer.cornerRadius = 65
        yellowLightView.backgroundColor = UIColor.yellow
        yellowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = 65
        greenLightView.backgroundColor = UIColor.green
        greenLightView.alpha = 0.3
        
    }


}

