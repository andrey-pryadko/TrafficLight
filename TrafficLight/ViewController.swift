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
    
    @IBOutlet weak var mainButton: UIButton!
    
    private var lightStatus = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLights()
        
        mainButton.configuration = setupButton(with: "Start")

    }
    
    @IBAction func mainButtonTapped() {
        
        mainButton.configuration = setupButton(with: "Next")
        
        switch lightStatus {
        case 0:
            redLightView.alpha = 1
            lightStatus += 2
        case 1:
            shutdownAllLights()
            redLightView.alpha = 1
            lightStatus += 1
        case 2:
            shutdownAllLights()
            yellowLightView.alpha = 1
            lightStatus += 1
        case 3:
            shutdownAllLights()
            greenLightView.alpha = 1
            lightStatus = 1
        default:
            print("Error")
        }
        
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = UIColor.blue
        buttonConfiguration.title = title.uppercased()
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        return buttonConfiguration
    }
    
    private func setupLights() {
        redLightView.layer.cornerRadius = 70
        redLightView.backgroundColor = UIColor.red
        redLightView.alpha = 0.3
        
        yellowLightView.layer.cornerRadius = 70
        yellowLightView.backgroundColor = UIColor.yellow
        yellowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = 70
        greenLightView.backgroundColor = UIColor.green
        greenLightView.alpha = 0.3
    }
    
    private func shutdownAllLights() {
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

}

