//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Никита Юрковский on 8.02.23.
//
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        //  ИЛИ ТАК
//        if let safeBmi = bmi {
//            let bmiTo1DecimalPlace = String(format: "%.1f", safeBmi)
//            return bmiTo1DecimalPlace
//        } else {
//            return "0.0"
//        }
        
//        if bmi != nil {
//            let bmiTo1DecimalPlace = String(format: "%.1f", bmi!)
//            return bmiTo1DecimalPlace
//        } else {
//            return "0.0"
//        }
        
        // Более короткая запись
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more food", color: .blue)
        } else if bmiValue < 24.9  {
            bmi = BMI(value: bmiValue, advice: "Fir as a fidde!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less food", color: .red)
        }
        
    }
}
