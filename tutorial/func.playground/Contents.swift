import Swift

// 함수 선언의 기본 형태
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// 반환값이 없는 함수
func printMyName(name: String) -> Void {
    print("제 이릅은 \(name) 입니다.")
}
// 반환값이 없는 경우 Void 생략이 가능함
func printYourName(name: String) {
    print("당신의 이름은 \(name) 입니다.")
}

//매개변수가 없는 함수
func getIntegerMaxValue() -> Int {
    return Int.max
}

// 매개변수와 반환값이 없는 함수
func hello() -> Void {
    print("hello")
}
func bye() { print("bye") }

// 함수의 호출
sum(a: 5, b: 3)
printMyName(name: "txxbro")
printYourName(name: "orbxxt")
getIntegerMaxValue()
hello()
bye()


print("\n#### 함수 고급 ####")

// 기본값을 가지는 매개변수
func greeting(freind: String, me: String = "txxbro") {
    print("Hello \(freind)! I'm \(me).")
}
greeting(freind: "orbxxt")
greeting(freind: "orbxxt", me: "tae")

// 전달인자 매개변수
// 전달인자 매개변수를 변경하여 같은 이름의 함수를 여러개 선언할 수 있음
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me).")
}
// 함수 호출 시에는 전달인자 매개변수를 사용해야 함
greeting(to: "yagom", from: "txxbro")

// 가변 매개변수
func sayHelloToFriends(me: String, friends: String...) {
    print("Hello \(friends)! I'm \(me)")
}
sayHelloToFriends(me: "txxbro", friends: "haha", "yagom", "hoho")
sayHelloToFriends(me: "txxbro")

// 함수의 타입 표현
var someFunction: (String, String) -> Void = greeting(to:from:) // FIXME 이게 왜 에러지???
someFunction("eric", "txxbro")
someFunction("txxbro", "hhhooo")

// 타입이 다른 함수는 할당할 수 없음 -> compile error
//someFunction = sayHelloToFriends(me: friends:)

func anotherFunction(function: (String, String) -> Void) {
    function("jenny", "mike")
}
anotherFunction(function: greeting(to:from:))
anotherFunction(function: someFunction)
