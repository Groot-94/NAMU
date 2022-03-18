//
//  Fucn.swift
//  BackJun
//
//  Created by NAMU on 2022/03/18.
//

import Foundation

func selfNumber(_ number: Int) -> Int {
    if number >= 10000 {
        return number + (number%100000)/10000 + (number%10000)/1000 + (number%1000)/100 + (number%100)/10 + number%10
    }
    if number >= 1000{
        return number + (number%10000)/1000 + (number%1000)/100 + (number%100)/10 + number%10
    }
    if number >= 100 {
        return number + (number%1000)/100 + (number%100)/10 + number%10
    }
    if number >= 10 {
        return number + (number%100)/10 + number%10
    }
    return number + number
}

