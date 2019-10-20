import Swift

let age = 10;

print("나는 \(age)살 입니다.")
print("나는 \(age + 5)살 입니다.")
dump("나는 \(age + 10)살 입니다.")

class Person {
    var name = "taehyung"
    var age = "27"
}

let taehyung: Person = Person();

print("\n#### print ####")
print(taehyung)
print(taehyung.name)
print(taehyung.age)
print(taehyung.self)


print("\n##### dump ####")
dump(taehyung)


print("\n#### let과 var ####")
let constant: String = "차후에 변경이 불가한 let"
var variable: String = "차후에 변경이 가능한 var"

//constant = "상수는 차후에 변경할 수 없다."
variable = "변수는 차후에 변경할 수 있다."
print(constant + " | " + variable)


print("\n#### 선언 후 할당하기 ####")
// 선언 후 나중에 값 할당하는 경우에는 타입을 꼭 명시 해야 한다.
let sum: Int
let valueA: Int = 100
let valueB: Int = 200

sum = valueA + valueB
print(sum)

// 선언 후 값을 할당하기 전에 사용할 경우 compile error
var nickName: String
//print(nickName)
nickName = "taehyung"
print(nickName)
nickName = "txxbro"
print(nickName)
