//
//  Day04.swift
//  30-Days-Of-Code
//
//  Created by TaeWon Seo on 2021/12/22.
//

import Foundation

struct Day04: Problem {
    
    /*
     이 챌린지에서, 클래스와 인스턴스의 차이를 학습한다.
     Person 클래스를 작성한다.
     Person은 age라는 정수 프로퍼티를 가지며, initialAge라는 파라미터를 전달받는 이니셜라이저를 갖는다.
     initialAge에 음수가 전달되면 이니셜라이저는 해당 인스턴스의 age를 0으로 셋하고 "Age is not valid, setting age to 0."라는 문구를 출력한다.
     추가적으로 다음과 같은 인스턴스 메소드를 갖는다.
     1. yearPasses() 는 age를 1 증가시킨다.
     2. amIOld()는 다음과 같은 조건실행문을 갖는다
        - age < 13 => "You are young." 출력.
        - age >= 13, age < 18 => "You are a teenager."
        - age >= 18 => "You are old."
     
     */
    
    func playAnswer() {
        let t = Int(readLine()!)!

        for _ in 0..<t {
            let age = Int(readLine()!)!
            let p = Person(initialAge: age)

            p.amIOld()

            for i in 1...3 {
                p.yearPasses()
            }

            p.amIOld()

            print("")
        }
    }
    
    class Person {
        var age: Int = 0

        init(initialAge: Int) {
            if initialAge >= 0 {
                self.age = initialAge
            } else {
                self.age = 0
                print("Age is not valid, setting age to 0.")
            }
        }

        func amIOld() {
            let message = age < 13 ? "You are young." : age >= 13 && age < 18 ? "You are a teenager." : "You are old."
            print(message)
        }

        func yearPasses() {
            age += 1
        }
    }
}
