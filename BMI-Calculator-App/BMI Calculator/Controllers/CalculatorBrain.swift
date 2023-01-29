//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Atash Musazade on 26.01.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        let advice = bmi?.advice ?? ""
        return advice
    }
    func getColor() -> UIColor {
        let color = bmi?.color ?? UIColor.black
        return color
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Yemək çox yeginən!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Qaydasındasan qaqaşım, narmalni!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Dietaya oturmaq lazımdı bratım!", color: UIColor.red)
        }
    }
}
