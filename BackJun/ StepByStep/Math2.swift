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

func pritmeNumberSieve(_ number: Int) {
    let k = readLine()!.split(separator: " ").map{Int($0)!}
    var n = [0, 1]
    
    for i in 2...k[1] {
        n.append(i)
    }
    for i in 2...k[1] {
        if n[i] == 0 {
            continue
        }
        var j = i + i
        while j <= k[1] {
            n[j] = 0
            j += i
        }
    }
    for i in n {
        if i != 0 {
            print(i)
        }
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

func useBertrandPostulate() {
    var k: Int
    var result = 0
    while true {
        k = Int(readLine()!)!
        if k == 1 || k == 2 {
            print(1)
            continue
        } else if k == 0 {
            break
        }
        for i in k + 1...2 * k {
            if findDecimal(i) {
                result += 1
            }
        }
        print(result)
        result = 0
    }
}

func findDecimal(_ number: Int) -> Bool {
    if Int(sqrt(Double(number))) >= 2 {
        for i in 2...Int(sqrt(Double(number))) {
            if number % i == 0 {
                return false
            }
        }
    }
    return true
}

/*
 문제
 1보다 큰 자연수 중에서  1과 자기 자신을 제외한 약수가 없는 자연수를 소수라고 한다. 예를 들어, 5는 1과 5를 제외한 약수가 없기 때문에 소수이다. 하지만, 6은 6 = 2 × 3 이기 때문에 소수가 아니다.

 골드바흐의 추측은 유명한 정수론의 미해결 문제로, 2보다 큰 모든 짝수는 두 소수의 합으로 나타낼 수 있다는 것이다. 이러한 수를 골드바흐 수라고 한다. 또, 짝수를 두 소수의 합으로 나타내는 표현을 그 수의 골드바흐 파티션이라고 한다. 예를 들면, 4 = 2 + 2, 6 = 3 + 3, 8 = 3 + 5, 10 = 5 + 5, 12 = 5 + 7, 14 = 3 + 11, 14 = 7 + 7이다. 10000보다 작거나 같은 모든 짝수 n에 대한 골드바흐 파티션은 존재한다.

 2보다 큰 짝수 n이 주어졌을 때, n의 골드바흐 파티션을 출력하는 프로그램을 작성하시오. 만약 가능한 n의 골드바흐 파티션이 여러 가지인 경우에는 두 소수의 차이가 가장 작은 것을 출력한다.

 입력
 첫째 줄에 테스트 케이스의 개수 T가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고 짝수 n이 주어진다.

 출력
 각 테스트 케이스에 대해서 주어진 n의 골드바흐 파티션을 출력한다. 출력하는 소수는 작은 것부터 먼저 출력하며, 공백으로 구분한다.
 */

func geussOfGoldbach() {
    let n = Int(readLine()!)!

    for _ in 0..<n {
        let k = Int(readLine()!)!
        var number = k/2
        while true {
            let number1 = k - number
            if findDecimal(number) && findDecimal(number1), number + number1 == k {
                print("\(number) \(number1)")
                break
            }
            number -= 1
        }
    }
}

/*
 문제
 한수는 지금 (x, y)에 있다. 직사각형은 각 변이 좌표축에 평행하고, 왼쪽 아래 꼭짓점은 (0, 0), 오른쪽 위 꼭짓점은 (w, h)에 있다. 직사각형의 경계선까지 가는 거리의 최솟값을 구하는 프로그램을 작성하시오.

 입력
 첫째 줄에 x, y, w, h가 주어진다.

 출력
 첫째 줄에 문제의 정답을 출력한다.

 제한
 */

func escapeFromRectangle() {
    var n = readLine()!.split(separator: " ").map{Int($0)!}
    
    let x = n[0]
    let y = n[1]
    let w = n[2]
    let h = n[3]
    
    n[2] = w - x
    n[3] = h - y
    
    print(n.min()!)
}

/*
 문제
 세 점이 주어졌을 때, 축에 평행한 직사각형을 만들기 위해서 필요한 네 번째 점을 찾는 프로그램을 작성하시오.

 입력
 세 점의 좌표가 한 줄에 하나씩 주어진다. 좌표는 1보다 크거나 같고, 1000보다 작거나 같은 정수이다.

 출력
 직사각형의 네 번째 점의 좌표를 출력한다.
 */

func findFourthPoint() {
    let firstDot = readLine()!.split(separator: " ").map{Int($0)!}
    let secondDot = readLine()!.split(separator: " ").map{Int($0)!}
    let thirdDot = readLine()!.split(separator: " ").map{Int($0)!}
    var result = [Int]()

    for i in 0...1 {
        if firstDot[i] == secondDot[i] {
            result.append(thirdDot[i])
        } else if firstDot[i] == thirdDot[i] {
            result.append(secondDot[i])
        } else if secondDot[i] == thirdDot[i] {
            result.append(firstDot[i])
        }
    }

    print("\(result[0]) \(result[1])")
}

/*
 문제
 과거 이집트인들은 각 변들의 길이가 3, 4, 5인 삼각형이 직각 삼각형인것을 알아냈다. 주어진 세변의 길이로 삼각형이 직각인지 아닌지 구분하시오.

 입력
 입력은 여러개의 테스트케이스로 주어지며 마지막줄에는 0 0 0이 입력된다. 각 테스트케이스는 모두 30,000보다 작은 양의 정수로 주어지며, 각 입력은 변의 길이를 의미한다.

 출력
 각 입력에 대해 직각 삼각형이 맞다면 "right", 아니라면 "wrong"을 출력한다.
 */

func usePythagoreanTheorem() {
    var input = [Int]()
    var result = 0
    while true {
        input = readLine()!.split(separator: " ").compactMap{Int($0)}
        
        if input[0] == 0, input[1] == 0, input[2] == 0 {
            break
        }
        
        input.sort()
        
        result = (input[0] * input[0]) + (input[1] * input[1]) - (input[2] * input[2])
        
        if result == 0 {
            print("right")
        } else {
            print("wrong")
        }
    }
}

/*
 19세기 독일 수학자 헤르만 민코프스키는 비유클리드 기하학 중 택시 기하학을 고안했다.

 택시 기하학에서 두 점 T1(x1,y1), T2(x2,y2) 사이의 거리는 다음과 같이 구할 수 있다.

 D(T1,T2) = |x1-x2| + |y1-y2|

 두 점 사이의 거리를 제외한 나머지 정의는 유클리드 기하학에서의 정의와 같다.

 따라서 택시 기하학에서 원의 정의는 유클리드 기하학에서 원의 정의와 같다.

 원: 평면 상의 어떤 점에서 거리가 일정한 점들의 집합

 반지름 R이 주어졌을 때, 유클리드 기하학에서 원의 넓이와, 택시 기하학에서 원의 넓이를 구하는 프로그램을 작성하시오.

 입력
 첫째 줄에 반지름 R이 주어진다. R은 10,000보다 작거나 같은 자연수이다.

 출력
 첫째 줄에는 유클리드 기하학에서 반지름이 R인 원의 넓이를, 둘째 줄에는 택시 기하학에서 반지름이 R인 원의 넓이를 출력한다. 정답과의 오차는 0.0001까지 허용한다.
 */

func userTaxiGeometry() {
    let n = Double(readLine() ?? "") ?? 0
    
    print(n * n * Double.pi)
    print(n * n * 2)
}

/*
 조규현과 백승환은 터렛에 근무하는 직원이다. 하지만 워낙 존재감이 없어서 인구수는 차지하지 않는다. 다음은 조규현과 백승환의 사진이다.



 이석원은 조규현과 백승환에게 상대편 마린(류재명)의 위치를 계산하라는 명령을 내렸다. 조규현과 백승환은 각각 자신의 터렛 위치에서 현재 적까지의 거리를 계산했다.

 조규현의 좌표 (x1, y1)와 백승환의 좌표 (x2, y2)가 주어지고, 조규현이 계산한 류재명과의 거리 r1과 백승환이 계산한 류재명과의 거리 r2가 주어졌을 때, 류재명이 있을 수 있는 좌표의 수를 출력하는 프로그램을 작성하시오.

 입력
 첫째 줄에 테스트 케이스의 개수 T가 주어진다. 각 테스트 케이스는 다음과 같이 이루어져 있다.

 한 줄에 x1, y1, r1, x2, y2, r2가 주어진다. x1, y1, x2, y2는 -10,000보다 크거나 같고, 10,000보다 작거나 같은 정수이고, r1, r2는 10,000보다 작거나 같은 자연수이다.

 출력
 각 테스트 케이스마다 류재명이 있을 수 있는 위치의 수를 출력한다. 만약 류재명이 있을 수 있는 위치의 개수가 무한대일 경우에는 -1을 출력한다.
 */
func findMarinToTurret() {
    let k = Int(readLine()!)!
    var t = [Int]()
    
    for _ in 0..<k {
        t = readLine()!.split(separator: " ").map{Int($0)!}
        
        let (x1,y1,r1,x2,y2,r2) = (t[0],t[1],t[2],t[3],t[4],t[5])
        
        let d = sqrt(Double((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2)))
        
            if x1 == x2 && y1 == y2 && r1 == r2 {
                print(-1)
            }
            else if Double(abs(r1-r2)) < d && d < Double(r1+r2) {
                print(2)
            }
            else if Double(r1+r2) == d || Double(abs(r1-r2)) == d {
                print(1)
            }
            else {
                print(0)
            }
    }
}
