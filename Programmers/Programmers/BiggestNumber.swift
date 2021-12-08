//
//  BiggestNumber.swift
//  Programmers
//
//  Created by TaeWon Seo on 2021/12/08.
//

import Foundation

struct BiggestNumber {
    
    /*
     0 또는 양의 정수가 주어졌을 때, 정수를 이어 붙여 만들 수 있는 가장 큰 수를 알아내 주세요.
     예를 들어, 주어진 정수가 [6, 10, 2]라면 [6102, 6210, 1062, 1026, 2610, 2106]를 만들 수 있고, 이중 가장 큰 수는 6210입니다.
     0 또는 양의 정수가 담긴 배열 numbers가 매개변수로 주어질 때, 순서를 재배치하여 만들 수 있는 가장 큰 수를 문자열로 바꾸어 return 하도록 solution 함수를 작성해주세요.
     제한 사항
     numbers의 길이는 1 이상 100,000 이하입니다.
     numbers의 원소는 0 이상 1,000 이하입니다.
     정답이 너무 클 수 있으니 문자열로 바꾸어 return 합니다.
     */
    static func solution(numbers: [Int]) -> String {
        let number = numbers.map { "\($0)" }.sorted { Int($0+$1)! > Int($1+$0)! }.joined()
        /*
         return "\(Int(number)!)"
         : String을 Int로 변환 후 String으로 다시 변환하는 것이 생각보다 시간복잡도가 높은 것 같다.
         number의 첫 글자가 0 인지 체크하는 것이 더 빠르다.
         */
        return number.first != "0" ? number : "0"
    }
}
