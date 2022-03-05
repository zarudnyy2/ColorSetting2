//
//  ViewController.swift
//  ColorSetting2
//
//  Created by Алексей Зарудный on 05.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var rSlider: UISlider!
    @IBOutlet var gSlider: UISlider!
    @IBOutlet var bSlider: UISlider!
    
    @IBOutlet var rLabel: UILabel!
    @IBOutlet var gLabel: UILabel!
    @IBOutlet var bLabel: UILabel!
    
    @IBOutlet var rView: UILabel!
    @IBOutlet var gView: UILabel!
    @IBOutlet var bView: UILabel!
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }
    private func changeView() {
        rView.text = String(round(rSlider.value * 100) / 100)
        gView.text = String(round(gSlider.value * 100) / 100)
        bView.text = String(round(bSlider.value * 100) / 100)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 20
        
        rLabel.text = "Red"
        gLabel.text = "Green"
        bLabel.text = "Blue"
        
        rSlider.minimumTrackTintColor = .red
        gSlider.minimumTrackTintColor = .green
        bSlider.minimumTrackTintColor = .blue
        
        }
        
    @IBAction func setupColor() {
        changeColor()
        changeView()
    }
}
