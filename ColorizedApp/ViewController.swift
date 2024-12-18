//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Владислав Якунин on 18.12.2024.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var colorPanel: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var valueRedSlider: UILabel!
    @IBOutlet var valueGreenSlider: UILabel!
    @IBOutlet var valueBlueSlider: UILabel!
    
    // MARK: - View life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPanel.layer.cornerRadius = 10
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        setupValueSliders()
        changeColor()
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        setupValueSliders()
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        setupValueSliders()
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        setupValueSliders()
        changeColor()
    }
}

// MARK: - Setup UI
extension ViewController {
    private func changeColor() {
        colorPanel.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(1.0)
        )
    }
    
    private func setupValueSliders() {
        valueRedSlider.text = String(format: "%.2f", redSlider.value)
        valueGreenSlider.text = String(format: "%.2f", greenSlider.value)
        valueBlueSlider.text = String(format: "%.2f", blueSlider.value)
    }

    private func setupRedSlider() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = .random(in: redSlider.minimumValue...redSlider.maximumValue)
    }
    
    private func setupGreenSlider() {
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = .random(in: greenSlider.minimumValue...greenSlider.maximumValue)
    }
        
    private func setupBlueSlider() {
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = .random(in: blueSlider.minimumValue...blueSlider.maximumValue)
    }
}
