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

