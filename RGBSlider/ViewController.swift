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

    private var r: Float = Float.random(in: 0..<255)
    private var g: Float = Float.random(in: 0..<255)
    private var b: Float = Float.random(in: 0..<255)
    
    
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
            r = sender.value
 
        case greenSlider:
            g = sender.value

        case blueSlider:
            b = sender.value

        default:
            break
        }
        
        setColor()
        
    }
    
    // MARK: Private Methods

    private func setRandomColor(){
        
        redSlider.value   = r
        greenSlider.value = g
        blueSlider.value  = b
        
        setColor()
        
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
    
   private func setColor(){
    
        redLabel.text   = NSString(format:"%.2f", r) as String
        greenLabel.text = NSString(format:"%.2f", g) as String
        blueLabel.text  = NSString(format:"%.2f", b) as String

        colorView.backgroundColor = UIColor(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
    
    }
    
}

