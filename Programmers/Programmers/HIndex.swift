//
//  HIndex.swift
//  Programmers
//
//  Created by TaeWon Seo on 2021/12/08.
//

import Foundation

struct HIndex {
    static func solution(_ citations:[Int]) -> Int {
        let citations = citations.sorted(by: >)
        var result: Int = -1
        for index in citations.indices {
            let h = index + 1
            guard citations[index] >= h else {
                result = index
                break
            }
        }
        return result == -1 ? citations.count : result
    }
}
