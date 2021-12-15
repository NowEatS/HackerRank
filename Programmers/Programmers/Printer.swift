//
//  Printer.swift
//  Programmers
//
//  Created by TaeWon Seo on 2021/12/10.
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priority = priorities
    var nowIndex = location
    var answer = 0
    
    while true {
        if priority.first! == priority.max() {
            priority.removeFirst()
            answer += 1
            
            if nowIndex == 0 {
                break
            } else {
                nowIndex -= 1
            }
        } else {
            let temp = priority.removeFirst()
            priority.append(temp)
            
            if nowIndex == 0 {
                nowIndex = priority.count - 1
            } else {
                nowIndex -= 1
            }
        }
    }
    
    return answer
}
