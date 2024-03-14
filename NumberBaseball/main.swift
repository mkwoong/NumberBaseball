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
            let num = Int.random(in: 0...9)
            numbers.insert(num)
            answerNumber = Array(numbers)
            if answerNumber.first == 0 {
                continue
            }
        }
        return answerNumber
    }
    
    func start() {
        let answer = makeAnswer()
        
        while true{
            var s_count = 0
            var b_count = 0
            
            print("숫자를 입력하세요")
            let input = readLine()!
            var numArray: [Int] = []
            for s in input {
                guard let num = Int(String(s)) else{
                    print("잘못된 입력값입니다")
                    break
                }
                numArray.append(num)
            }
            
            if numArray.count != 3 {
                print("3자릿수를 입력해주세요")
                continue
            }
            
            if numArray[0] == 0 {
                print("0은 처음에 올 수 없습니다")
                continue
            }
            
            if numArray[0] == numArray[1] || numArray[0] == numArray[2] || numArray[1] == numArray[2] {
                print("숫자가 중복되었습니다")
                continue
            }
            
            for index in 0...2 {
                if numArray[index] == answer[index] {
                    s_count += 1
                } else if answer.contains(numArray[index]){
                    b_count += 1
                }
            }
            print("\(s_count)스트라이크 \(b_count)볼")
            
            if s_count == 3 {
                print("정답입니다")
                break
            }
        }
    }
}
