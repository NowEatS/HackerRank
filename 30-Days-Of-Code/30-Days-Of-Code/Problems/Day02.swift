//
//  Day02.swift
//  30-Days-Of-Code
//
//  Created by TaeWon Seo on 2021/12/22.
//

import Foundation

struct Day02: Problem {
    
    /*
     음식 가격 mealCost,
     팁 퍼센트 tipPercent,
     세금 퍼센트 taxPercent가 주어진다.
     음식의 총 가격을 출력한다. (결과는 정수로 반올림한다.)
     */
    
    func playAnswer() {
        guard let mealCost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }

        guard let tipPercent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }

        guard let taxPercent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }

        solve(meal_cost: mealCost, tip_percent: tipPercent, tax_percent: taxPercent)
    }
    
    func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
        let tipCost = meal_cost * Double(tip_percent) * 0.01
        let taxCost = meal_cost * Double(tax_percent) * 0.01
        let totalCost = Int(round(meal_cost + tipCost + taxCost))
        print(totalCost)
    }
}
