//
//  Fucn.swift
//  BackJun
//
//  Created by NAMU on 2022/03/18.
//

import Foundation

func selfNumber(_ number: Int) -> Int {
        return number + (number%10000)/1000 + (number%1000)/100 + (number%100)/10 + number%10
}

func hanNumber(_ number: Int) {
    var count = 0
    for num in 1...number {
        if num < 100 {
            count += 1
        } else if num != 1000 {
            if (num%1000)/100 - (num%100)/10 == (num%100)/10 - num%10 {
                count += 1
            }
        }
    }
    print(count)
}
