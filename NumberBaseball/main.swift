//
//  main.swift
//  NumberBaseball
//
//  Created by 문기웅 on 3/12/24.
//

let game = BaseballGame()
game.start()

class BaseballGame {
    
    func makeAnswer() -> [Int] {
        var numbers: Set<Int> = []
        var answerNumber: [Int] = []
        while numbers.count < 3 {
            let num = Int.random(in: 1...9)
            numbers.insert(num)
        }
        answerNumber = Array(numbers)
        return answerNumber
    }
    
    func start() {
        var s_count = 0
        var b_count = 0
        let answer = makeAnswer()
        print("숫자를 입력하세요")
        let input = readLine()!.map { Int(String($0))! }

        if input.count != 3 {
            print("3자리 수를 입력하세요")
            return start()
        }
        
        if input.contains(0) {
            print("0을 포함할 수 없습니다")
            return start()
        }
        
        
    }
}
