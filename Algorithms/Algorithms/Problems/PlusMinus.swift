//
//  PlusMinus.swift
//  Algorithms
//
//  Created by TaeWon Seo on 2021/12/02.
//

import Foundation

/*
 Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

 Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.
 */

struct PlusMinus: Problem {
    private var sampleInput = [1, 1, 0, -1, -1]
    
    func playAnswer() {
        plusMinus(arr: sampleInput)
    }
    
    private func plusMinus(arr: [Int]) -> Void {
        let countOfArray = Double(arr.count)
        let printFormat = "%.6f"
        let proportionOfPositive: String = String(format: printFormat, (Double(arr.filter { $0 > 0 }.count) / countOfArray))
        let proportionOfNegative: String = String(format: printFormat, (Double(arr.filter { $0 < 0 }.count) / countOfArray))
        let proportionOfZero: String = String(format: printFormat, (Double(arr.filter { $0 == 0 }.count) / countOfArray))
        
        print(proportionOfPositive)
        print(proportionOfNegative)
        print(proportionOfZero)
    }
}
