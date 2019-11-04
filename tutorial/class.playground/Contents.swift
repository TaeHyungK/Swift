import Swift

/**
 클래스 (class)
  - 클래스는 참조 (reference) 타입
  - 대문자 카멜케이스 사용
  - 다중 상속이 되지 않음
 */

// 클래스 선언
class Sample {
    // 가변 프로퍼티
    var mutableProperty: Int = 100
    // 불변 프로퍼티
    let immutableProperty: Int = 100
    // 타입 프로퍼티
    static var typeProperty: Int = 100
    
    // 인스턴스 메소드
    func instanceMethod() {
        print("instance method")
    }
    // 타입 메소드1 (static 키워드 사용: 상속시 재정의 불가한 타입 메소드)
    static func typeMethod() {
        print("type method - static")
    }
    // 타입 메소드2 (class 키워드 사용: 상속시 재정의 가능한 타입 메소드)
    class func classMethod() {
        print("type method - class")
    }
}

// 인스턴스 생성 - 참조 정보 수정 가능
var mutableReference: Sample = Sample()
mutableReference.mutableProperty = 200
// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없음 (compile error)
//mutableReference.immutableProperty = 200

// 인스턴스 생성 - 참조 정보 변경 불가
let immutableReference: Sample = Sample()

// class의 인스턴스는 참조 타입이므로 let으로 선언하였어도 가변 프로퍼티의 값을 변경할 수 있음
immutableReference.mutableProperty = 200
// 다만, 참조 정보를 변경하는 것은 불가능함 (compile error)
//immutableReference = mutableReference

// 타입 프로퍼티 및 타입 메소드
Sample.typeProperty = 300
Sample.typeMethod()

// 인스턴스에서 타입 프로퍼티 및 타입 메소드 사용 불가
//mutableReference.typeProperty = 300
//mutableReference.typeMethod()

// 학생 클래스 만들어보기
class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

// class 타입 변수 사용
Student.selfIntroduce()

// 인스턴스 생성
var txxbro: Student = Student()
txxbro.name = "txxbro"
txxbro.class = "스위프트"
txxbro.selfIntroduce()

// 인스턴스 생성
// 불변 인스턴스지만, 클래스는 참조타입이므로 가변 프로퍼티를 변경할 수 있음
let testBro: Student = Student()
testBro.name = "testBro"
testBro.selfIntroduce()
