import Swift

/**
클래스 vs 구조체/열거형
  - 클래스는 참조 타입, 구조체/열거형은 값 타입
  - 클래스는 상속이 가능, 구조체/열거형은 상속이 불가
 */

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

// 첫번째 구조체 인스턴스
let firstStructInstance = ValueType()

// 두번째 구조체 인스턴스에 첫번째 구조체 인스턴스 할당
var secondStructInstance = firstStructInstance

secondStructInstance.property = 2

// 두번째 구조체 인스턴스는 첫번째 구조체 인스턴스를 똑같이 복사한
// 별도의 인스턴스이기 때문에
// 두번째 구조체 인스턴스의 property 값을 변경해도
// 첫번째 구조체 인스턴스의 property 값에 영향을 주지 않음
print("firstStructInstance.property = \(firstStructInstance.property)")
print("secondStructInstance.property = \(secondStructInstance.property)")

// 첫번째 클래스 인스턴스
let firstClassInstance = ReferenceType()

// 두번째 클래스 인스턴스에 첫번째 클래스 인스턴스 할등
var secondClassInstance = firstClassInstance
secondClassInstance.property = 2

// 두번째 클래스 인스턴스는 첫번째 클래스 인스턴스를 참조하기 때문에
// 두번째 클래스 인스턴스의 property 값을 변경하면
// 첫번째 클래스 인스턴스의 property 값에도 영향을 줌
print("firstClassInstance.property = \(firstClassInstance.property)")
print("secondClassInstance.property = \(secondClassInstance.property)")
