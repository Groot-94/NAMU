//print(Atm()) //Atm 완료 2022-02-26

//print(zeroCoin()) //동전 0 완료 2022-02-27

//print(conference()) //회의실 배정 완료 2022-02-28

//print(treasure()) //보물 완료 2022-03-01

//print(lost()) //잃어버린 괄호 2022-03-02

//print(changes()) //거스름돈 2022-03-03

//print(lope()) // 로프 2022-03-04

//print(microwave()) // 전자레인지 2022-03-05

//print(sum()) // 수들의 합 2022-03-06

//print(gasStation()) // 주유소 2022-03-07

//MARK: - While 문

/*
 문제 - 2022-03-09
 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.

 입력
 입력은 여러 개의 테스트 케이스로 이루어져 있다.

 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)

 입력의 마지막에는 0 두 개가 들어온다.

 출력
 각 테스트 케이스마다 A+B를 출력한다.

 예제 입력 1
 1 1
 2 3
 3 4
 9 8
 5 2
 0 0
 예제 출력 1
 2
 5
 7
 17
 7
 */

//func sumNumber() {
//    var test = [Int]()
//    var result = [Int]()
//    while 3 > test.count {
//        test = (readLine()!.split(separator: " ").map({Int($0)!}))
//        if test[0] == 0 && test[1] == 0 {
//            break
//        }
//        result.append(test[0] + test[1])
//    }
//    for i in result {
//        print(i)
//    }
//}
//
//sumNumber()

/*
 문제 - 2022-03-09
 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.

 입력
 입력은 여러 개의 테스트 케이스로 이루어져 있다.

 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)

 출력
 각 테스트 케이스마다 A+B를 출력한다.

 예제 입력 1
 1 1
 2 3
 3 4
 9 8
 5 2
 예제 출력 1
 2
 5
 7
 17
 7
 */

//while let input1 = readLine() {
//    let arr = input1.split(separator: " ")
//    let a = Int(arr[0])!
//    let b = Int(arr[1])!
//    print(a+b)
//}
