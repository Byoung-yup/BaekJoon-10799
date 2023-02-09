//
//  main.swift
//  BaekJoon#10799
//
//  Created by 김병엽 on 2023/02/10.
//
// Reference: https://velog.io/@sun02/Swift-백준-10799-쇠막대기

import Foundation

func solution() -> Int {

    let input = readLine()!.map { String($0) }

    var stack = 0
    var count = 0

    for i in 0..<input.count {

        if input[i] == "(" {
            stack += 1
        } else {
            stack -= 1
            if input[i - 1] == "(" {
                count += stack
            } else {
                count += 1
            }
        }

    }

    return count
}

print(solution())
