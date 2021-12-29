//
//  Day05.swift
//  30-Days-Of-Code
//
//  Created by TaeWon Seo on 2021/12/30.
//

import Foundation

struct Day05: Problem {
    
    /*
     이 챌린지에서, 반복문을 사용한다.
     정수 n이 주어지고, n의 처음부터 10번째까지의 배수를 출력한다.
     
     */
    
    func playAnswer() {
        guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }
        
        for i in 1...10 {
            print("\(n) x \(i) = \(n*i)")
        }
    }
}
