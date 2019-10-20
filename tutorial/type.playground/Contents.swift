import Swift

print("\n#### 기본 데이터 타입 ####")
// Bool
var someBool: Bool = true
someBool = false
print(someBool)

// Int
var someInt: Int = -100
someInt = 100 // 가능
print(someInt)

// UInt
var someUInt: UInt = 100
//someUInt = -100 // 불가능
//someUInt = someInt // 불가능
print(someUInt)

var someFloat: Float = 3.14
print(someFloat)
someFloat = 3 // 가능
print(someFloat)

var someDouble: Double = 3.14
print(someDouble)
someDouble = 3 // 가능
//someDouble = someFloat // 불가능
print(someDouble)

var someCharacter: Character = "👍"
someCharacter = "가"
//someCharacter = "가나다" // 불가능
print(someCharacter)

var someString: String = "가나다라마바사"
someString = "👍"
someString = "따봉입니다. " + someString
//someString = someCharacter // 불가능
print(someString)


print("\n#### Any, AnyObject, nil ####")
var someAny: Any = "어떤 타입이든 올 수 있다"
print(someAny)
someAny = 3.34
print(someAny)

// Any 타입에 Double 형이 있더라도 Any는 Double 타입이 아니기 때문에 할당할 수 없음
// 명시적으롵 타입 변환 필요함
//var someDouble: Double = someAny // 불가능

class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
// AnyObject는 class instance만 수용할 수 있기 때문에 Double 타입은 할당할 수 없음
//someAnyObject = 3.33 // 불가능

//someAny = nil // 불가능
//someAnyObject = nil // 불가능
