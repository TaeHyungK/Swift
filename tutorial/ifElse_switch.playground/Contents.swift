import Swift

let someIntger = 100

// 조건문

// #### if문 ####
//if condition {
//    statements1
//} else if condition2 {
//    statements2
//} else {
//    statements3
//}

if someIntger < 100 {
    print("100 미만")
} else if someIntger > 100 {
    print("100 초과")
} else {
    print("100")
}

// condition 은 항상 Bool 타입만 들어올 수 있으므로 컴파일 에러
//if someIntger {
//
//}

// #### switch 문 ####
//switch 비교값 {
//case 패턴:
//    // 실행 구문
//default :
//    //실행 구문
//}

switch someIntger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

let myName: String = "txxbro"
switch myName {
case "yagom":
    print("yagom")
case "txxbro":
    print("my name is txxbro")
case "hhoo":
    print("hhoo")
default:
    print("unknown")
}
