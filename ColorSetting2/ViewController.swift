//
//  ViewController.swift
//  ColorSetting2
//
//  Created by Алексей Зарудный on 05.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    private func changeValue() {
        redValue.text = String(round(redSlider.value * 100) / 100)
        greenValue.text = String(round(greenSlider.value * 100) / 100)
        blueValue.text = String(round(blueSlider.value * 100) / 100)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 20
        
        redLabel.text = "Red"
        greenLabel.text = "Green"
        blueLabel.text = "Blue"
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        }
        
    @IBAction func setupColor() {
        changeColor()
        changeValue()
    }
}
