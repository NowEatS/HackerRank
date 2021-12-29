//
//  Day06.swift
//  30-Days-Of-Code
//
//  Created by TaeWon Seo on 2021/12/30.
//

import Foundation

struct Day06: Problem {
    
    /*
     앞서 배운 반복문과 조합하여 문자열의 지식을 확장한다.
     문자열 S, 문자열의 갯수 N (0에서 N-1까지 인덱싱)이 주어지고
     짝수 인덱스의 문자와 홀수 인덱스의 문자를 순서대로 한 줄에 출력.
     단 짝수인덱스 홀수인덱스 문자 그룹 사이에 공백을 추가하여 출력한다.
     */
    
    func playAnswer() {
        let numStrings = Int(readLine()!)!
        
        
        for _ in 1...numStrings {
            let inputString = readLine()!
            printEvenAndOdd(string: inputString)
        }
    }
    
    

    func printEvenAndOdd(string: String) {
        // This prints inputString to stderr for debugging:
        fputs("string: " + string + "\n", stderr)
        
        let stringArray: [String] = string.map { String($0) }
        
        // Print the even-indexed characters
        print(stride(from: 0, to: stringArray.count, by: 2).map{stringArray[$0]}.joined() , terminator: "")
        
        // Print a space
        print(" ", terminator: "")
        
        // Print the odd-indexed characters
        print(stride(from: 1, to: stringArray.count, by: 2).map {stringArray[$0]}.joined(), terminator: "")
        // Print a newline
        print("")
    }

}
