import Swift

/**
 Optional 이란
  - 값이 있을 수도 없을 수도 있음을 뜻함
  - nil 이 할당될 수 있는지 없는지 표현
 
 Optional 을 쓰는 이유?
  - 명시적 표현
    1. nil의 가능성을 코드만으로 표현
    2. 문서/주석 작성 시간 절약
  - 안전한 사용
    1. 전달받은 값이 옵셔널이 아니라면 nil 체크 없이 사용 가능
    2. 예외 상황을 최소화 하는 안전한 코딩
    3. 효율적 코딩
 */

// someOptionalParam에 nil 값이 들어올 수 있음
func someOptionalFunc(someOptionalParam: Int?) {
    print(someOptionalParam)
}

// someParam에 nil 값이 들어올 수 없음
func someFunc(someParam: Int) {
    print(someParam)
}

someOptionalFunc(someOptionalParam: nil)
//someFunc(someParam: nil) // nil이 들어갈 수 없음


// #### Optional 문법과 표현 ####

//enum Optional<Wrapped>: ExpressibleByNilLiteral {
//    case none:
//    case some(Wrapped)
//}

let optionalValue1: Optional<Int> = nil
let optionalValue2: Int? = nil

// Optional 표현

// 1. !를 이용한 암시적 추출 옵셔널
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("this Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1
// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil
// 잘못된 접근 시 runtime 오류 발생
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// 2. ?를 이용한 옵셔널
var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("this Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil
// 기존 변수처럼 사용 불가 - 옵셔널과 일반 값은 다른 타입이므로 연산 불가
//optionalValue = optionalValue + 1

/**
 옵셔널 추출
  - 옵셔널에 있는 값을 사용하기 위해 꺼내오는 것
 
 옵셔널 방식
  - 옵셔널 바인딩
    1. nil 체크 + 안전한 추출
    2. 옵셔널 안에 값이 있는지 체크 후 있을 경우 꺼내옴
    3. if - let 방식 사용
  - 강제 추출
    1. 옵셔널에 값이 있는지 체크하지 않고 강제로 값을 꺼내오는 방식
    2. 만약 값이 없을 경우(nil) runtime 에러가 발생하므로 추천하지 않음
 */

func pirintName(_ name: String) {
    print(name)
}

var myName: String? = nil

//print(myName) // 전달되는 값의 타입이 다르기 때문에 컴파일 오류 발생

// 옵셔널 바인딩
// if-let 방식
if let name: String = myName {
    print(name)
} else {
    print("myName is nil")
}

myName = "txxbro"
var yourName: String! = nil

if let name: String = yourName {
    print(name)
} else {
    print("yourName is nil")
}

// ,를 이용해 한 번에 여러 옵셔널 반인딩 가능
// 단, 모든 옵셔널에 값이 있는 경우에만 동작 (&& 연산인듯 함)
if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
} else {
    print("myName || yourName is nil")
}

yourName = "haha"
if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

// 강제 추출
var myName2: String? = "txxbro"
var yourName2: String! = nil

pirintName(myName2!)

myName2 = nil
//printName(myName2!) // 강제 추출 시 값이 없으므로 runtime 오류 발생
