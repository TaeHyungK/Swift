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

// Array 타입 생성 및 선언
var integers: Array<Int> = Array<Int>()
//동일한 표현
//var integers: Array<Int> = [Int]()
//var integers: Array<Int> = ()
//var integers: [Int] = Array<Int>()
//var integers: [Int] = [Int]()
//var integers: [Int] = []
//var integers = [Int]()

// Array 타입 활용
integers.append(1)
integers.append(100)
// Int가 아닌 타입은 append 불가
//integers.append(100.1) // 불가능

print(integers.contains(100))
print(integers.contains(99))

integers[0] = 10
print(integers)

integers.remove(at: 0)
integers.removeLast()
integers.append(100)
integers.removeAll()

integers.count

// 인덱스를 벗어나서 접근하려면 compile error
//integers[0]

// 불변 Array 선언
let immutableArray = [1, 2, 3]
// 불변 Array 는 append, remove 등 Array 를 수정하는 행위 불가
//immutableArray.append(10)
//immutableArray.remove(at: 2)

// Dictonary 생성 및 선언
var anyDictionary: Dictionary = [String: Any]() // key가 String 타입, value가 Any 타입인 빈 Dictonary 생성
// 동일한 표현
//var anyDictionary: Dictionary<String, Any> = Dictionary<String, Any>()
//var anyDictionary: Dictionary<String, Any> = [:]
//var anyDictionary: [String: Any] = Dictionary<String, Any>()
//var anyDictionary: [String: Any] = [String: Any]()
//var anyDictonary: [String: Any] = [:]
//var anyDictonary = [String: Any]()

// 키에 해당하는 값 할당
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary)

// 키에 해당하는 값 변경
anyDictionary["someKey"] = "changed value"
print(anyDictionary)

// 키에 해당하는 값 제거
anyDictionary.removeValue(forKey: "someKey")
anyDictionary["anotherKey"] = nil
print(anyDictionary)

// 불변 Dictonary 생성
let emptyDictionary: [String: String] = [:]
let initialDictonary: [String: String] = ["name": "txxbro", "gender": "male"]

// 불변 Dictonary 에 값 추가 불가
//emptyDictionary["someKey"] = "value" // 불가능

// "name"에 해당하는 value가 없을 수도 있으므로 String 타입이 나올 거라는 보장이 없다.
// 그래서, 컴파일 오류가 발생한다. 추후에 옵셔널과 타입 캐스팅에서 다룰 예정임.
//let someString: String = initialDictonary["name"] // 불가능

// Set 생성 및 선언
var integerSet: Set<Int> = Set<Int>()

// insert
integerSet.insert(30)
integerSet.insert(1)
integerSet.insert(30)
integerSet.insert(99)

print(integerSet)

// contains
print(integerSet.contains(99))
print(integerSet.contains(100))

integerSet.remove(30)
integerSet.removeFirst()

integerSet.count

// Set의 활용
// 멤버의 유일성이 보장되므로 집합 사용에 유용하다
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted() // 배열로 반환되는 듯하다
print(sortedUnion)

// 교집합
let intersection: Set<Int> = setA.intersection(setB)

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
