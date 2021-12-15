//
//  Day01.swift
//  30-Days-Of-Code
//
//  Created by TaeWon Seo on 2021/12/15.
//

import Foundation

struct Day01: Problem {
    
    /*
     아래의 조건을 만족하는 변수 i, d, s 가진 데이터 타입을 작성하라.
     1. 하나는 Int, 하나는 Double, 하나는 String
     2. 세 개의 인풋을 받아서 3변수를 초기화.
     3. 새 입력을 받아서 + 연산자를 사용하여 .
        1. i에 더하고 출력.
        2. d에 더하고 출력.
        3. s의 뒤에 String으로 붙이고 출력.
     */
    
    func playAnswer() {
        let i = 4
        let d = 4.0
        let s = "HackerRank "
        // Declare second integer, double, and String variables.

        // Read and save an integer, double, and String to your variables.

        // Print the sum of both integer variables on a new line.

        // Print the sum of the double variables on a new line.

        // Concatenate and print the String variables on a new line
        // The 's' variable above should be printed first.
        let integer = Int(readLine()!)!
        let double = Double(readLine()!)!
        let string = readLine()!

        print("\(i + integer)")
        print("\(d + double)")
        print(s + string)
    }
}
