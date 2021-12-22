//
//  Day03.swift
//  30-Days-Of-Code
//
//  Created by TaeWon Seo on 2021/12/22.
//

import Foundation

struct Day03: Problem {
    
    /*
     주어진 정수 n과 다음과 같은 조건에 따른 액션 실행.
     - n이 홀수면 "Weird" 출력
     - n이 짝수이며 2~5 사이의 숫자라면 Not Weird 출력
     - n이 짝수이며 6~20 사이의 숫자이면 Weird 출력
     - n이 짝수이며 20보다 크다면 Not Weird 출력
     */
    
    func playAnswer() {
        guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }
        
        if N%2 == 0 {
            if N >= 2, N < 5 {
                print("Not Weird")
            } else if N >= 6, N <= 20 {
                print("Weird")
            } else {
                print("Not Weird")
            }
        } else {
            print("Weird")
        }
    }
}
