//
//  ViewController.swift
//  MyThirdApp
//
//  Created by Aleksey Zyamin on 07.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var secondRedLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var secondBlueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var secondGreenLabel: UILabel!
    @IBOutlet var mainView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderSetup()
        blueSliderSetup()
        greenSliderSetup()
        secondRedLabelSetup()
        secondBlueLabelSetup()
        secondGreenLabelSetup()
    }

    @IBAction func redSliderAction() {
        secondRedLabel.text = String(redSlider.value)
        mainViewSetup()
    }
    @IBAction func blueSliderAction() {
        secondBlueLabel.text = String(blueSlider.value)
        mainViewSetup()
    }
    @IBAction func greenSliderAction() {
        secondGreenLabel.text = String(greenSlider.value)
        mainViewSetup()
    }
    
    
    //MARK: для слайдеров функции
    private func redSliderSetup() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.minimumTrackTintColor = .red
        
    }
    private func blueSliderSetup() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.minimumTrackTintColor = .blue
        
    }
    private func greenSliderSetup() {
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.minimumTrackTintColor = .green
        
    }
    
    //MARK: для лейблов настройки
    private func secondRedLabelSetup() {
        secondRedLabel.text = String(redSlider.value)
        secondRedLabel.textAlignment = .center
        secondRedLabel.textColor = .red
    }
    private func secondBlueLabelSetup() {
        secondBlueLabel.text = String(blueSlider.value)
        secondBlueLabel.textAlignment = .center
        secondBlueLabel.textColor = .blue
    }
    private func secondGreenLabelSetup() {
        secondGreenLabel.text = String(greenSlider.value)
        secondGreenLabel.textAlignment = .center
        secondGreenLabel.textColor = .green
    }
    private func mainViewSetup() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

