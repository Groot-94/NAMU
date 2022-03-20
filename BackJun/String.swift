//
//  ASCII.swift
//  BackJun
//
//  Created by NAMU on 2022/03/20.
//

import Foundation

func Ascii() {
    let n = readLine()!
    print(Int(UnicodeScalar(n)!.value))
}
