//
//  ViewController.swift
//  RGBSlider
//
//  Created by lastbyte on 27.02.2020.
//  Copyright © 2020 lastbyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IB Outlets

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider:   UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider:  UISlider!
    
    @IBOutlet weak var redLabel:   UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel:  UILabel!
    
    // MARK: - Private Properties

    private var redValue:   Float = Float.random(in: 0..<255)
    private var greenValue: Float = Float.random(in: 0..<255)
    private var blueValue:  Float = Float.random(in: 0..<255)
    
    
    // MARK: - Override Methods

    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupUI()
        setRandomColor()
        
    }

    // MARK: IB Actions

    @IBAction func changeColor(_ sender: UISlider) {
        
        switch sender {
        case redSlider:
            redValue = sender.value
 
        case greenSlider:
            greenValue = sender.value

        case blueSlider:
            blueValue = sender.value

        default:
            break
        }
        
        setColor(red: redValue, green: greenValue, blue: blueValue)
        setLabelText(red: redValue, green: greenValue, blue: blueValue)
    }
    
    // MARK: Private Methods

    private func setRandomColor(){
        
        redSlider.value   = redValue
        greenSlider.value = greenValue
        blueSlider.value  = blueValue
        
        setColor(red: redValue, green: greenValue, blue: blueValue)
        setLabelText(red: redValue, green: greenValue, blue: blueValue)
    }
    
    private func setupUI(){
        
        colorView.layer.cornerRadius = 8;
        colorView.layer.masksToBounds = true;
        
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        
        redSlider.minimumTrackTintColor   = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor  = .blue
        
    }
    
   private func setColor(red: Float,green: Float, blue:Float){

        colorView.backgroundColor = UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1.0)
    
    }
    
    private func setLabelText(red: Float,green: Float, blue:Float){
        
        let stringFormat = "%.2f"
        
        redLabel.text   = String(format:stringFormat, red)
        greenLabel.text = String(format:stringFormat, green)
        blueLabel.text  = String(format:stringFormat, blue)
        
    }
    
}

