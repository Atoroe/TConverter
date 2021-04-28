//
//  ViewController.swift
//  TConverter
//
//  Created by Artiom Poluyanovich on 28.04.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiumLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider! {
        didSet {
            temperatureSlider.minimumValue = 0
            temperatureSlider.maximumValue = 100
            temperatureSlider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let celsiumTemp = Int(round(sender.value))
        celsiumLabel.text = "\(celsiumTemp)ºC"
        let farenheitTemp = Int(round((sender.value * 9 / 5) + 32))
        farenheitLabel.text = "\(farenheitTemp)ºF"
    }
}

