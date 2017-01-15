//
//  ViewController.swift
//  ColorMaker
//
//  Created by Segun Famisa on 15/01/2017.
//  Copyright © 2017 Segun Famisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // reset sliders
        resetSliders()
    }


    @IBAction func changeColor(_ sender: AnyObject) {
        mixColors()
    }
    
    func mixColors() {
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    func resetSliders() {
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        mixColors()
    }
    
}

