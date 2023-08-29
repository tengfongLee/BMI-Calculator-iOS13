//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by tengfong lee on 8/28/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//


import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    func getBMIValue()->String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        let underWeightColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        let normalWeightColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        let overWeightColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: underWeightColor )
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle", color: normalWeightColor )
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: overWeightColor)
        }
    }
    
    func getAdvice()->String{
        let advice = String(bmi?.advice ?? "No advice")
        return advice
    }
    func getColor()->UIColor{
        let color = bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return color
    }
    
    
}
