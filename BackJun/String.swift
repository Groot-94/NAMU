//
//  ASCII.swift
//  BackJun
//
//  Created by NAMU on 2022/03/20.
//

import Foundation

/*
 문제
 알파벳 소문자, 대문자, 숫자 0-9중 하나가 주어졌을 때, 주어진 글자의 아스키 코드값을 출력하는 프로그램을 작성하시오.

 입력
 알파벳 소문자, 대문자, 숫자 0-9 중 하나가 첫째 줄에 주어진다.

 출력
 입력으로 주어진 글자의 아스키 코드 값을 출력한다.
 */

func Ascii() {
    let n = readLine()!
    print(Int(UnicodeScalar(n)!.value))
}

/*
 문제
 N개의 숫자가 공백 없이 쓰여있다. 이 숫자를 모두 합해서 출력하는 프로그램을 작성하시오.

 입력
 첫째 줄에 숫자의 개수 N (1 ≤ N ≤ 100)이 주어진다. 둘째 줄에 숫자 N개가 공백없이 주어진다.

 출력
 입력으로 주어진 숫자 N개의 합을 출력한다.
 */

func stringSum() {
    let n = Int(readLine()!)!
    let k = readLine()
    var result = [Int]()
    
    for num in k ?? "" {
        result.append(Int(String(num))!)
    }
    print(result.reduce(0, +))
}
