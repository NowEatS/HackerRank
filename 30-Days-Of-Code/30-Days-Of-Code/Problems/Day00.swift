//
//  Day00.swift
//  30-Days-Of-Code
//
//  Created by TaeWon Seo on 2021/12/02.
//

import Foundation

struct Day00: Problem {
    
    func playAnswer() {
        print("Insert your Input..")
        let inputString = readLine()
        guard let inputString = inputString else {
            print("Wrong Answer")
            return
        }
        
        print("Hello, World.")
        print(inputString)
    }
}
