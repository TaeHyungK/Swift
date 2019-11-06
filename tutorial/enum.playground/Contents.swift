import Swift

/**
 열거형 (enum)
  - 유사한 종류를 여러 값을 한 곳에 모아 정의 한 것 ex. 요일, 월, 계절 등
  - enum 자체가 하나의 타입으로 대문자 카멜케이스를 사용
  - 각 case는 소문자 카멜케이스 사용
  - 각 case는 그 자체가 고유의 값임 (각 case에서 자동으로 정수값이 할당되지 않음)
  - 각 case는 한 줄에 개별로도, 한 줄에 여러개도 정의가 가능
 */

enum WeekDay {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// enum의 사용
var day: WeekDay = WeekDay.mon
// 타입이 명확할 경우 enum의 이름을 생략할 수 있음
day = .tue
print(day)

// 모든 열거형을 명시할 경우 default는 생략 가능
// fallthrough 키워드를 통해 break 걸리지 않도록 처리
switch day {
case .mon, .tue, .wed, .thu:
    print("평일 입니다.")
case .fri:
    print("불금~~!")
case .sat:
    fallthrough
case .sun:
    print("신나는 주말")
}

/**
 rawValue (원시값)
  - rawValue는 각 case 별로 각각 다른 값을 가져야 함
  - rawValue는 자동으로 1증가된 값이 할당됨
  - rawValue를 지닐 필요가 엾을 경우 사용하지 않아도 됨
 */
enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
    
    // grape과 rawValuerk 같으므로 compile error 발생
//    case mango = 1
}

print("Fruit.peach.rawaVlue = \(Fruit.peach.rawValue)")

// Hashable 프로토콜을 따르는 원시값은 모두 사용 가능
enum School: String {
    case elemantary = "초등"
    case middle = "중등"
    case high = "고등"
    case universary
}

print("School.middle.rawValue = \(School.middle.rawValue)")
// 열거형의 원시값 타입이 String일 때, 원시값을 저장하지 않았다면
// case의 이름을 원시값으로 사용
print("Schoole.universary.rawValue = \(School.universary.rawValue)")

// 원시값을 통한 초기화
// rawValue를 통해 초기화한 열거형 값은 rawValue가 case에 해당되지 않을 수도 있으므로 Optional 임
// Fruit 타입이 아닌 옵셔널 타입임
//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange) 입니다.")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다.")
}

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    // 열거형 내에 메소드 선언
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따뜻한 봄")
        case .jun, .jul, .aug:
            print("더운 여름")
        case .sep, .oct, .nov:
            print("시원한 가을")
        case .dec, .jan, .feb:
            print("추운 겨울")
        }
    }
}

Month.mar.printMessage()
