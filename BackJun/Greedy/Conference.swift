//
//  Conference.swift
//  BackJun
//
//  Created by NAMU on 2022/02/28.
//
//MARK: - 회의실 배정
import Foundation
/*한 개의 회의실이 있는데 이를 사용하고자 하는 N개의 회의에 대하여 회의실 사용표를 만들려고 한다. 각 회의 I에 대해 시작시간과 끝나는 시간이 주어져 있고, 각 회의가 겹치지 않게 하면서 회의실을 사용할 수 있는 회의의 최대 개수를 찾아보자. 단, 회의는 한번 시작하면 중간에 중단될 수 없으며 한 회의가 끝나는 것과 동시에 다음 회의가 시작될 수 있다. 회의의 시작시간과 끝나는 시간이 같을 수도 있다. 이 경우에는 시작하자마자 끝나는 것으로 생각하면 된다.
 
 입력
 첫째 줄에 회의의 수 N(1 ≤ N ≤ 100,000)이 주어진다. 둘째 줄부터 N+1 줄까지 각 회의의 정보가 주어지는데 이것은 공백을 사이에 두고 회의의 시작시간과 끝나는 시간이 주어진다. 시작 시간과 끝나는 시간은 231-1보다 작거나 같은 자연수 또는 0이다.

 출력
 첫째 줄에 최대 사용할 수 있는 회의의 최대 개수를 출력한다.
 
 예제 입력 1
 11
 1 4
 3 5
 0 6
 5 7
 3 8
 5 9
 6 10
 8 11
 8 12
 2 13
 12 14
 
 예제 출력 1
 4
 */

func conference() -> Int {
    let n = Int(readLine()!)!
//    let i = [[1,4],[3,5],[0,6],[5,7],[3,8],[5,9],
//             [6,10],[8,11],[8,12],[2,13],[12,14]].sorted(by: {$1[0] < $0[0]})
    var i = [[Int]]()
    var result = 1
    var value: Int
    for _ in 0...n - 1 {
        i.append(readLine()!.split(separator: " ").map{ Int($0)!})
    }
//    i.sort(by: {$1[0] < $0[0]})
    i.sort { (a, b) -> Bool in
        if a[0] == b[0] {
            return  b[1] < a[1]
        } else {
            return b[0] < a[0]
        }
    }
    value = i[0][0]
    //print(i)
    for count in 0...n - 1 {
        if count < n - 1{
            if value >= i[count + 1][1] {
                result += 1
                value = i[count + 1][0]
            }
        }
    }
    return result
}
