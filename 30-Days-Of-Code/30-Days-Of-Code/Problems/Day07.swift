//
//  Day07.swift
//  30-Days-Of-Code
//
//  Created by TaeWon Seo on 2021/12/30.
//

import Foundation

struct Day07: Problem {
    
    /*
     배열 데이터 구조에 대해 학습한다.
     배열 A, 정수 N, A의 원소를 반대 순서로 한 줄에 출력한다.
     */
    
    func playAnswer() {
        guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }

        guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

        let arr: [Int] = arrTemp.split(separator: " ").map {
            if let arrItem = Int($0) {
                return arrItem
            } else { fatalError("Bad input") }
        }

        guard arr.count == n else { fatalError("Bad input") }
        
        arr.reversed().forEach { value in
            print("\(value)", terminator: " ")
        }
    }
}
