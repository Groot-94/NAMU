//
//  Math2.swift
//  BackJun
//
//  Created by NAMU on 2022/04/08.
//

import Foundation

/*
 문제
 주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.

 입력
 첫 줄에 수의 개수 N이 주어진다. N은 100이하이다. 다음으로 N개의 수가 주어지는데 수는 1,000 이하의 자연수이다.

 출력
 주어진 수들 중 소수의 개수를 출력한다.
 */

func decimal(_ number: Int) -> Bool {
    var count = 0
    
    for i in 1...1000 {
        if number % i == 0 {
            count += 1
        }
    }
    
    if count == 2 {
        return true
    } else {
        return false
    }
}

func findDecimal() {
    let n = Int(readLine()!)!
    let k = readLine()!.split(separator: " ").map{Int($0)!}
    var result = 0
    
    for i in 0..<n {
        if decimal(k[i]) {
            result += 1
        }
    }
    print(result)
}

/*
 문제
 자연수 M과 N이 주어질 때 M이상 N이하의 자연수 중 소수인 것을 모두 골라 이들 소수의 합과 최솟값을 찾는 프로그램을 작성하시오.

 예를 들어 M=60, N=100인 경우 60이상 100이하의 자연수 중 소수는 61, 67, 71, 73, 79, 83, 89, 97 총 8개가 있으므로, 이들 소수의 합은 620이고, 최솟값은 61이 된다.

 입력
 입력의 첫째 줄에 M이, 둘째 줄에 N이 주어진다.

 M과 N은 10,000이하의 자연수이며, M은 N보다 작거나 같다.

 출력
 M이상 N이하의 자연수 중 소수인 것을 모두 찾아 첫째 줄에 그 합을, 둘째 줄에 그 중 최솟값을 출력한다.

 단, M이상 N이하의 자연수 중 소수가 없을 경우는 첫째 줄에 -1을 출력한다.
 */

func findDecimalArray() {
    
    let M = Int(readLine()!)!
    let N = Int(readLine()!)!
    
    var count = 0
    var result = [Int]()
    
    for i in M...N {
        for number in 1...N {
            if i % number == 0 {
                count += 1
            }
        }
        if count == 2 {
            result.append(i)
            count = 0
        } else {
            count = 0
        }
    }
    
    if result.count > 0 {
        print(result.reduce(0, +))
        print(result.min()!)
    } else {
        print(-1)
    }
}
