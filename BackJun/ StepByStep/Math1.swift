//
//  Math1.swift
//  BackJun
//
//  Created by NAMU on 2022/03/30.
//

import Foundation

/*
 제
 월드전자는 노트북을 제조하고 판매하는 회사이다. 노트북 판매 대수에 상관없이 매년 임대료, 재산세, 보험료, 급여 등 A만원의 고정 비용이 들며, 한 대의 노트북을 생산하는 데에는 재료비와 인건비 등 총 B만원의 가변 비용이 든다고 한다.
 
 예를 들어 A=1,000, B=70이라고 하자. 이 경우 노트북을 한 대 생산하는 데는 총 1,070만원이 들며, 열 대 생산하는 데는 총 1,700만원이 든다.
 
 노트북 가격이 C만원으로 책정되었다고 한다. 일반적으로 생산 대수를 늘려 가다 보면 어느 순간 총 수입(판매비용)이 총 비용(=고정비용+가변비용)보다 많아지게 된다. 최초로 총 수입이 총 비용보다 많아져 이익이 발생하는 지점을 손익분기점(BREAK-EVEN POINT)이라고 한다.
 
 A, B, C가 주어졌을 때, 손익분기점을 구하는 프로그램을 작성하시오.
 
 입력
 첫째 줄에 A, B, C가 빈 칸을 사이에 두고 순서대로 주어진다. A, B, C는 21억 이하의 자연수이다.
 
 출력
 첫 번째 줄에 손익분기점 즉 최초로 이익이 발생하는 판매량을 출력한다. 손익분기점이 존재하지 않으면 -1을 출력한다.
 */

func breakEvenPoint() {
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    var result: Int
    if n[1] < n[2] {
        result = n[0]/(n[2]-n[1]) + 1
    } else {
        result = -1
    }
    print(result)
}

/*
 문제
 
 
 위의 그림과 같이 육각형으로 이루어진 벌집이 있다. 그림에서 보는 바와 같이 중앙의 방 1부터 시작해서 이웃하는 방에 돌아가면서 1씩 증가하는 번호를 주소로 매길 수 있다. 숫자 N이 주어졌을 때, 벌집의 중앙 1에서 N번 방까지 최소 개수의 방을 지나서 갈 때 몇 개의 방을 지나가는지(시작과 끝을 포함하여)를 계산하는 프로그램을 작성하시오. 예를 들면, 13까지는 3개, 58까지는 5개를 지난다.
 
 입력
 첫째 줄에 N(1 ≤ N ≤ 1,000,000,000)이 주어진다.
 
 출력
 입력으로 주어진 방까지 최소 개수의 방을 지나서 갈 때 몇 개의 방을 지나는지 출력한다.
 */

func honeycomb() {
    let n = Int(readLine()!)!
    var result = 0
    var count = 1
    
    while true {
        result += 1
        if count >= n {
            break
        }
        count += result * 6
    }
    print(result)
}

/*
 무한히 큰 배열에 다음과 같이 분수들이 적혀있다.
 
 1/1    1/2    1/3    1/4    1/5    …
 2/1    2/2    2/3    2/4    …    …
 3/1    3/2    3/3    …    …    …
 4/1    4/2    …    …    …    …
 5/1    …    …    …    …    …
 …    …    …    …    …    …
 이와 같이 나열된 분수들을 1/1 → 1/2 → 2/1 → 3/1 → 2/2 → … 과 같은 지그재그 순서로 차례대로 1번, 2번, 3번, 4번, 5번, … 분수라고 하자.
 
 X가 주어졌을 때, X번째 분수를 구하는 프로그램을 작성하시오.
 
 입력
 첫째 줄에 X(1 ≤ X ≤ 10,000,000)가 주어진다.
 
 출력
 첫째 줄에 분수를 출력한다.
 */

//1, 2, 4, 7, 11
//  1  2  3  4

//  1 3 6 10

func fountainFind() {
    let X = Int(readLine()!)!
    var sum = 0 // 전체 구간의 개수의 합
    var count = 1 // 구하고자하는 구간의 합
    var arr: [String] = []
    
    for i in 1...X {
        sum += i
        count += 1
        if sum >= X {
            break
        }
    }
    
    if count % 2 == 0 {
        for j in 1..<count {
            arr.append("\(count - j)/\(j)")
        }
    }else {
        for j in 1..<count {
            arr.append("\(j)/\(count - j)")
        }
    }
    let index = arr.count - (sum - X) - 1
    print("\(arr[index])")
}

/*
 문제
 땅 위에 달팽이가 있다. 이 달팽이는 높이가 V미터인 나무 막대를 올라갈 것이다.
 
 달팽이는 낮에 A미터 올라갈 수 있다. 하지만, 밤에 잠을 자는 동안 B미터 미끄러진다. 또, 정상에 올라간 후에는 미끄러지지 않는다.
 
 달팽이가 나무 막대를 모두 올라가려면, 며칠이 걸리는지 구하는 프로그램을 작성하시오.
 
 입력
 첫째 줄에 세 정수 A, B, V가 공백으로 구분되어서 주어진다. (1 ≤ B < A ≤ V ≤ 1,000,000,000)
 
 출력
 첫째 줄에 달팽이가 나무 막대를 모두 올라가는데 며칠이 걸리는지 출력한다.
 */

func upSnail() {
    let k = readLine()!.split(separator: " ").map{Int($0)}
    var day = 0
    if let A = k[0], let B = k[1], let V = k[2] {
        day = (V - B)/(A - B)
        if (V-B) % (A - B) != 0 {
            day += 1
        }
    }
    print(day)
}

/*
 ACM 호텔 매니저 지우는 손님이 도착하는 대로 빈 방을 배정하고 있다. 고객 설문조사에 따르면 손님들은 호텔 정문으로부터 걸어서 가장 짧은 거리에 있는 방을 선호한다고 한다. 여러분은 지우를 도와 줄 프로그램을 작성하고자 한다. 즉 설문조사 결과 대로 호텔 정문으로부터 걷는 거리가 가장 짧도록 방을 배정하는 프로그램을 작성하고자 한다.
 
 문제를 단순화하기 위해서 호텔은 직사각형 모양이라고 가정하자. 각 층에 W 개의 방이 있는 H 층 건물이라고 가정하자 (1 ≤ H, W ≤ 99). 그리고 엘리베이터는 가장 왼쪽에 있다고 가정하자(그림 1 참고). 이런 형태의 호텔을 H × W 형태 호텔이라고 부른다. 호텔 정문은 일층 엘리베이터 바로 앞에 있는데, 정문에서 엘리베이터까지의 거리는 무시한다. 또 모든 인접한 두 방 사이의 거리는 같은 거리(거리 1)라고 가정하고 호텔의 정면 쪽에만 방이 있다고 가정한다.
 
 방 번호는 YXX 나 YYXX 형태인데 여기서 Y 나 YY 는 층 수를 나타내고 XX 는 엘리베이터에서부터 세었을 때의 번호를 나타낸다. 즉, 그림 1 에서 빗금으로 표시한 방은 305 호가 된다.
 
 손님은 엘리베이터를 타고 이동하는 거리는 신경 쓰지 않는다. 다만 걷는 거리가 같을 때에는 아래층의 방을 더 선호한다. 예를 들면 102 호 방보다는 301 호 방을 더 선호하는데, 102 호는 거리 2 만큼 걸어야 하지만 301 호는 거리 1 만큼만 걸으면 되기 때문이다. 같은 이유로 102 호보다 2101 호를 더 선호한다.
 
 여러분이 작성할 프로그램은 초기에 모든 방이 비어있다고 가정하에 이 정책에 따라 N 번째로 도착한 손님에게 배정될 방 번호를 계산하는 프로그램이다. 첫 번째 손님은 101 호, 두 번째 손님은 201 호 등과 같이 배정한다. 그림 1 의 경우를 예로 들면, H = 6이므로 10 번째 손님은 402 호에 배정해야 한다.
 
 입력
 프로그램은 표준 입력에서 입력 데이터를 받는다. 프로그램의 입력은 T 개의 테스트 데이터로 이루어져 있는데 T 는 입력의 맨 첫 줄에 주어진다. 각 테스트 데이터는 한 행으로서 H, W, N, 세 정수를 포함하고 있으며 각각 호텔의 층 수, 각 층의 방 수, 몇 번째 손님인지를 나타낸다(1 ≤ H, W ≤ 99, 1 ≤ N ≤ H × W).
 
 출력
 프로그램은 표준 출력에 출력한다. 각 테스트 데이터마다 정확히 한 행을 출력하는데, 내용은 N 번째 손님에게 배정되어야 하는 방 번호를 출력한다.
 */

func ACMHotel() {
    let n = Int(readLine()!)!
    var k = [Int]()
    var result = 0
    
    for _ in 0..<n {
        k = readLine()!.split(separator: " ").map{Int($0)!}
        if k[2] % k[0] != 0 {
            result = (k[2] % k[0]) * 100 + k[2]/k[0] + 1
        } else {
            result = k[0] * 100 + k[2]/k[0]
        }
        print(result)
    }
}

/*
 문제
 평소 반상회에 참석하는 것을 좋아하는 주희는 이번 기회에 부녀회장이 되고 싶어 각 층의 사람들을 불러 모아 반상회를 주최하려고 한다.
 
 이 아파트에 거주를 하려면 조건이 있는데, “a층의 b호에 살려면 자신의 아래(a-1)층의 1호부터 b호까지 사람들의 수의 합만큼 사람들을 데려와 살아야 한다” 는 계약 조항을 꼭 지키고 들어와야 한다.
 
 아파트에 비어있는 집은 없고 모든 거주민들이 이 계약 조건을 지키고 왔다고 가정했을 때, 주어지는 양의 정수 k와 n에 대해 k층에 n호에는 몇 명이 살고 있는지 출력하라. 단, 아파트에는 0층부터 있고 각층에는 1호부터 있으며, 0층의 i호에는 i명이 산다.
 
 입력
 첫 번째 줄에 Test case의 수 T가 주어진다. 그리고 각각의 케이스마다 입력으로 첫 번째 줄에 정수 k, 두 번째 줄에 정수 n이 주어진다
 
 출력
 각각의 Test case에 대해서 해당 집에 거주민 수를 출력하라.
 */

func womenIsPresident() {
    let n = Int(readLine()!)
    for _ in 0..<n! {
        let floor = Int(readLine()!)!
        let num = Int(readLine()!)!
        var f = Array<Int>(1...num)
        for _ in 0..<floor {
            for i in 1..<num {
                f[i] += f[i-1]
            }
        }
        print(f.max()!)
    }
}

/*
 문제
 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 
 입력
 첫째 줄에 A와 B가 주어진다. (0 < A,B < 1010000)
 
 출력
 첫째 줄에 A+B를 출력한다.
 1 999999999999999999
 18446744073709551615
 */

func makeArr(num: String) -> [Int] {
    var arr = [Int]()
    for i in num {
        arr.append(Int(String(i))!)
    }
    arr.reverse()
    return arr
}

func sumArr(arrA: [Int], arrB: [Int]) -> [Int] {
    var result = arrA
    let sumArr = arrB
    for i in 0..<result.count {
        if i < sumArr.count{
            result[i] += sumArr[i]
        }
        if result[i] > 9 {
            if result.count - 1 > i {
                result[i+1] += 1
                result[i] -= 10
            } else if i == result.count - 1{
                result[i] -= 10
                result.append(1)
            }
        }
    }
    result.reverse()
    return result
}

func printArr(arr: [Int]) -> String {
    var result = ""
    for i in arr {
        result += String(i)
    }
    return result
}

func bigSum() {
    let n = readLine()?.split(separator: " ").map{String($0)}
    var arr1 = [Int]()
    var arr2 = [Int]()
    arr1 = makeArr(num: n![0])
    arr2 = makeArr(num: n![1])
    
    if arr1.count >= arr2.count {
        print(printArr(arr: sumArr(arrA: arr1, arrB: arr2)))
    }   else {
        print(printArr(arr: sumArr(arrA: arr2, arrB: arr1)))
    }
}
