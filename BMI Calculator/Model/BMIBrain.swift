//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Aleksandr Khalupa on 22.12.2020.
//

import UIKit

struct BMIBrain {

    var objBmi: BMI?
    
    
    mutating func getBMI(weigth:Float, height: Float){
        let bmiResult = weigth / pow(height, 2)
        switch bmiResult {
        case ...18.5:
            objBmi = BMI(bmi: bmiResult, image: #imageLiteral(resourceName: "underweight"))
        case 18.6...24.9:
            objBmi = BMI(bmi: bmiResult, image: #imageLiteral(resourceName: "normal"))
        case 25...29.9:
            objBmi = BMI(bmi: bmiResult, image: #imageLiteral(resourceName: "overweight"))
        case 30...34.9:
            objBmi = BMI(bmi: bmiResult, image: #imageLiteral(resourceName: "obese"))
        case 35...:
            objBmi = BMI(bmi: bmiResult, image: #imageLiteral(resourceName: "extremlyObese"))
        default:
            print("Error")
        }
    }
    
    func sendImage() -> UIImage{
        return objBmi?.image ?? #imageLiteral(resourceName: "bmi")
    }
    
    func sendBMI() -> String {
        return String(format: "%.1f", objBmi?.bmi ?? 1.0)
    }
    
}
