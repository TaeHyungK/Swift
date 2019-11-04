import Swift

/**
 구조체란?
  - 스위프트는 대부분 타입은 구조체로 이루어져 있음
  - 구조체는 값(value) 타입
  - 대문자 카멜케이스 사용
 */

// 구조체 정의
// struct 키워드 이용
struct Sample {
    // 가변 프로퍼티 (값 변경 가능)
    var mutableProperty: Int = 100
    // 불변 프로퍼티 (값 변경 불가능)
    let immutableProperty: Int = 100
    //타입 프로퍼티 (static 키워드 사용: 타입 자체가 사용하는 프로퍼티)
    static var typeProperty: Int = 100
    
    //인스턴스 메소드 (인스턴스가 사용하는 메소드)
    func instanceMethod() {
        print("instance Method")
    }
    // 타입 메소드 (static 키워드 사용: 타입 자체가 사용하는 프로퍼티)
    static func typeMethod() {
        print("type Method")
    }
}

// 가변 인스턴스 생성
var mutable: Sample = Sample()
mutable.mutableProperty = 200
// 불변 프로퍼티는 인스턴스 생성 후 값을 변경할 수 없음 (compile error)
//mutable.immutableProperty = 300

// 불변 인스턴스 생성
let immutable: Sample = Sample()
// 불변 인스턴스는 가변 프로퍼티여도 값을 변경할 수 없음 (compile error)
//immutable.mutableProperty = 400

// 타입 프로퍼티 및 타입 메소드
Sample.typeProperty = 400
Sample.typeMethod()
// 인스턴스에서는 타입 프로퍼티나 타입 메소드 사용이 불가 (compile error)
//mutable.typeProperty = 200
//mutable.typeMethod()

// 학생 구조체 만들어 보기
struct Student {
    var name: String = "unknown"
    // 예약어도 "₩"로 묶어주면 사용할 수 있음
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var txxbro: Student = Student()
txxbro.name = "txxbro"
txxbro.class = "스위프트"
txxbro.selfIntroduce()

let testbro: Student = Student()
testbro.selfIntroduce()
