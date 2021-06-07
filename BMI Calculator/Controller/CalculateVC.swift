//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Aleksandr Khalupa on 19.12.2020.
//

import UIKit

class CalculateVC: UIViewController {
    
    @IBOutlet weak var haighLabel: UILabel!
    @IBOutlet weak var weightLebel: UILabel!
    @IBOutlet weak var heighSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    

    var calculateBMI:Float = 0.0
    var bmiBarain = BMIBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    
    @IBAction func swaipHeigh(_ sender: UISlider) {
        
        haighLabel.text = String(format: "%.2f", sender.value) + " m"
        
    }
    
    @IBAction func swaipWeight(_ sender: UISlider) {
        
        let weigthValue = String(format: "%.0f", sender.value)
        weightLebel.text = "\(weigthValue) kg"
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let height = heighSlider.value
        let weigth = weightSlider.value
        
        bmiBarain.getBMI(weigth: weigth, height: height)
        performSegue(withIdentifier: "toResultVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC"{
            let resultVC = segue.destination as! ResultVievC
            resultVC.resultBMI = bmiBarain.sendBMI()
            resultVC.imageBMI = bmiBarain.sendImage()
        }
    }
    
    
    func setUI() {
        heighSlider.value = 1.7
        weightSlider.value = 70
        haighLabel.text = String(format: "%.2f", heighSlider.value) + " m"
        weightLebel.text = String(format: "%.0f", weightSlider.value) + " kg"
    }
}

