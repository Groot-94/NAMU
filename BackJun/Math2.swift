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

/*
 소인수분해
 문제
 정수 N이 주어졌을 때, 소인수분해하는 프로그램을 작성하시오.
 
 입력
 첫째 줄에 정수 N (1 ≤ N ≤ 10,000,000)이 주어진다.
 
 출력
 N의 소인수분해 결과를 한 줄에 하나씩 오름차순으로 출력한다. N이 1인 경우 아무것도 출력하지 않는다.
 */

func printFactorization() {
    var n = Int(readLine()!)!
    var count = 2
    
    if n != 1 {
        while n != 1 {
            if n%count == 0 {
                n = n/count
                print(count)
                count = 2
            } else {
                count += 1
            }
        }
    }
}

/*
 소수 구하기(에라토스테네의 체)
 문제
 M이상 N이하의 소수를 모두 출력하는 프로그램을 작성하시오.
 
 입력
 첫째 줄에 자연수 M과 N이 빈 칸을 사이에 두고 주어진다. (1 ≤ M ≤ N ≤ 1,000,000) M이상 N이하의 소수가 하나 이상 있는 입력만 주어진다.
 
 출력
 한 줄에 하나씩, 증가하는 순서대로 소수를 출력한다.
 */

func useSieveOfEratosthenes() {
    let k = readLine()!.split(separator: " ").map{Int($0)!}
    var n = [Int]()
    
    for i in k[0]...k[1] {
        if i != 1{
            n.append(i)
        }
    }
    
    if k[1] >= 4 {
        for i in 2...Int(sqrt(Double(k[1]))) {
            n = n.filter{ $0 == i || $0 % i != 0 }
        }
    }
    
    for i in n {
        print(i)
    }
}

/*
 문제
 베르트랑 공준은 임의의 자연수 n에 대하여, n보다 크고, 2n보다 작거나 같은 소수는 적어도 하나 존재한다는 내용을 담고 있다.
 
 이 명제는 조제프 베르트랑이 1845년에 추측했고, 파프누티 체비쇼프가 1850년에 증명했다.
 
 예를 들어, 10보다 크고, 20보다 작거나 같은 소수는 4개가 있다. (11, 13, 17, 19) 또, 14보다 크고, 28보다 작거나 같은 소수는 3개가 있다. (17,19, 23)
 
 자연수 n이 주어졌을 때, n보다 크고, 2n보다 작거나 같은 소수의 개수를 구하는 프로그램을 작성하시오.
 
 입력
 입력은 여러 개의 테스트 케이스로 이루어져 있다. 각 케이스는 n을 포함하는 한 줄로 이루어져 있다.
 
 입력의 마지막에는 0이 주어진다.
 
 출력
 각 테스트 케이스에 대해서, n보다 크고, 2n보다 작거나 같은 소수의 개수를 출력한다.
 */

func findDecimalV2() {
    var k: Int
    var n = [Int]()
    
    while true {
        k = Int(readLine()!)!
        
        if k == 1 {
            print(1)
            continue
        } else if k == 0 {
            break
        }
        
        for i in k + 1...2 * k {
            n.append(i)
        }
        for i in k...Int(sqrt(Double(2 * k))) {
            n = n.filter{ $0 % i != 0 || $0 == i }
        }
        
        print(n.count)
        n.removeAll()
    }
}
