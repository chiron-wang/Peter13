//
//  ViewController.swift
//  StreetFighter
//
//  Created by mikewang on 2019/9/12.
//  Copyright © 2019 mikewang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var ryuImageView: UIImageView!
    @IBOutlet weak var gradientView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var alphaSwitch: UISwitch!
    @IBOutlet weak var gradientSwitch: UISwitch!
    @IBOutlet weak var borderSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var gradientSlider: UISlider!
    @IBOutlet weak var borderSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    
    @IBAction func colorSliderChanged(_ sender: UISlider) {
        updateColor()
        updateFrame()
        updateLabelText()
    }
    
    @IBAction func frameSwitchChanged(_ sender: UISwitch) {
        cleanGradientView()
        cleanBorder()
        SetSliderIsEnabled()
    }
    
    // MARK: - Other Method
    
    private func updateLabelText() {
        redLabel.text = String(format: "%.3f", redSlider.value)
        greenLabel.text = String(format: "%.3f", greenSlider.value)
        blueLabel.text = String(format: "%.3f", blueSlider.value)
        alphaLabel.text = String(format: "%.3f", alphaSlider.value)
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 1
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        if alphaSwitch.isOn {
            alpha = CGFloat(alphaSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        backgroundView.backgroundColor = color
    }
    
    func updateFrame() {
        if gradientSwitch.isOn {
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = gradientView.bounds
            gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
             gradientLayer.locations = [0.0,NSNumber(value: gradientSlider.value)]
            gradientView.layer.addSublayer(gradientLayer)
        }
        
        if borderSwitch.isOn {
            ryuImageView.layer.borderColor = UIColor.orange.cgColor
            ryuImageView.layer.borderWidth =  CGFloat(borderSlider.value)
        }
    }
    
    private func cleanGradientView() {
        if !gradientSwitch.isOn {
            if let count = gradientView.layer.sublayers?.count {
                if count > 0 {
                    gradientView.layer.sublayers?.removeAll()
                }
            }
        }
    }
    
    private func cleanBorder() {
        if !borderSwitch.isOn {
            ryuImageView.layer.borderColor = UIColor.clear.cgColor
            ryuImageView.layer.borderWidth =  0
        }
    }
    
    private func SetSliderIsEnabled() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        alphaSlider.isEnabled = alphaSwitch.isOn
        gradientSlider.isEnabled = gradientSwitch.isOn
        borderSlider.isEnabled = borderSwitch.isOn
    }
    
}

