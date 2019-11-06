### 콘솔 로그

- print
  - 단순 문자열 출력
- dump
  - 인스턴스의 자세한 설명 (description 프로퍼티) 까지 출력



### 문자열 보간법

- 프로그램 실행 중 문자열 내에 변수 또는 상수의 실질적인 값을 표현하기 위해 사용
  - \\()
    - "안녕하세요! 저는 \\(age)살 입니다."
    - "안녕하세요! 저는 \\(age + 5)살 입니다.
    - print("안녕하세요! 저는 \\(age + 5)살 입니다.")



### 변수와 상수

- 상수 선언 키워드 let
  - let 이름: 타입 = 값
- 변수 선언 키워드 var
  - var 이름: 타입 = 값
- 값의 타입이 명확하다면 타입 생략 가능
  - let 이름 = 값
  - var 이름 = 값
- 상수/변수 선언 후에 나중에 값 할당할 때에는 꼭 타입을 명시해주어야 함



### 기본 데이터 타입

- Bool
  - true
  - false
  - 0, 1을 넣을 수 없음 (compile error)
- Int
  - 정수값
- UInt
  - Unsigned Integer (양의 정수)
  - 음수 불가능
  - UInt에 Int 값 넣을 수 없음 (compile error)
    - Swift는 데이터 타입에 굉장히 까다로움
- Float
  - 부동 소수형
  - 정수도 물론 가능함
- Double
  - 64bit 부동 소수형
  - 정수도 물론 가능
  - Double에 Float 값 넣을 수 없음 (compile error)
- Character
  - 한 글자를 표현하는 문자 타입
  - ""를 사용
  - unicode로 표현할 수 있는 모든 문자 가능
  - 여러 문자를 넣을 수 없음 (compile error)
- String
  - 문자열 타입
  - "+" 연산을 통해 합칠 수 있음
  - String에 Character를 넣을 수 없음 (compile error)



### Any, AnyObject, nil

- Any - Swift의 모든 타입을 지칭하는 키워드
  - Any로 선언한 값이 Double이여도 Double 타입의 변수에 할당이 불가함
  - 단, nil 을 넣을 수 없음
    - 즉, 없는 값을 넣을 수는 없음
- AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
  - class instance만 받을 수 있음
- nil - 없음을 의미하는 키워드
  - null과 유사한 키워드라고 생각하면 됨
  - optional 파트에서 학습 예정



### 컬렉션 타입

- Array - 순서가 있는 리스트 컬렉션
  - 배열과 유사함
  - Array\<Int\>, [Int]
  - append(): 요소 추가
  - contains(value): 해당 요소가 있는지 체크 (return: Bool)
  - remove(value: int): 해당 index의 값 제거
  - removeLast(): 마지막 요소 제거
  - removeAll(): 모든 요소 제거
  - count: 총 갯수
  - let 키워드로 선언 시 불변 Array로 append, remove 등 사용 불가
- Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
  - Map과 비슷
  - Dictionary<String, Any>, [String: Any]
  - removeValue(forKey: value): value를 가진 값제거
  - dictionary[keyValue] = nil: keyValue를 가진 값을 제거
  - 빈 Dictionary의 표현: [:]
- Set - 순서가 없고 멤버가 유일한 컬렉션
  - 중복이 없음
  - Set<Int>
  - insert(): 요소 추가
  - contains(): 요소 유무 체크
  - remove(): 요소 삭제
  - removeFirst(): 첫번째 요소 삭제
  - count: 총 갯수
  - union(): 합집합을 만듦
  - sorted(): 정렬
  - intersection(): 교집함
  - subtracting(): 차집합



### 함수

- 함수 선언의 기본 형태
  - func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    	//함수 구현부
    	return 반환값
    }

- 함수의 호출
  - 함수이름(매개변수1이름: 값, 매개변수2이름: 값)

### 함수 고급

- 매개변수 기본값 설정
  - func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
    	// 함수 구현부
    	return 반환값
    }
- 전달인자 레이블
  - 함수를 호출할 때 매개변수의 좀 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용함
    - func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
      	// 함수 구현부
      	return 
      }
- 가변 매개변수
  - 전달 받을 값의 개수를 알기 어려울 때 사용
  - 가변 매개변수는 함수당 하나만 가질 수 있음
    - func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
      	// 함수 구현부
      	return
      }
    - 가변 매개변수에 nil 값은 넣을 수 없음. 넣고싶다면 함수 호출 시 해당 매개변수를 명시하지 않으면 됨
- 데이터 타입으로서의 함수
  - 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어임
  - 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고 매개변수를 통해 전달할 수도 있음
- 함수의 타입표현
  - 반환 타입을 생략할 수 없음
  - (매개변수1타입, 매개변수2타입 ...) -> 반환타입



### 조건문

- if-else
  - if() ~ else if() ~ else
    - 기존에 쓰던 소괄호 생략 가능
    - 중괄호는 생략 불가능 (한줄 사용에도 생략 불가)
    - 비교 값은 Bool 타입만 올 수 있음
- switch
  - 일반 사용과 동일
  - 범위 연산자
    - 1..<100
      - 1이상 100미만
    - 101...Int.max
      - 이상,이하를 표현
  - 정수 외의 대부분 기본 타입을 사용할 수 있음
  - default 구문은 필수로 작성 필요함
  - 명시적으로 break를 하지 않아도 break가 걸림
  - case 에 콤마(,) 혹은 fallthorugh 키워드로 break를 피해갈 수 있음



### 반복문

- for - in
  - for each문과 동일
  - for <item명> in <for 문 돌릴 배열>
- while
  - while 문과 동일
  - while 조건 { 동작 }
- repeat - while
  - do-while문과 동일
  - repeat { 동작 } while 조건
  - do라는 키워드를 사용하지 않는 이유?
    - 오류 처리 구문에서 사용하기 때문



### 옵셔널

![스크린샷 2019-10-27 오전 1.04.16](/var/folders/2t/1m1d23g93gd28qsyzbskhrrh0000gn/T/TemporaryItems/(screencaptureui이(가) 문서 저장 중 6)/스크린샷 2019-10-27 오전 1.04.16.png)

- optional: 값이 있을 수도 있고 없을 수도 없음을 뜻함

- 필요 이유?

  - nil의 가능성을 명시적으로 표현
  - nil 가능성을 문서화 하지 않아도 코드만으로 충분피 표현이 가능
    - 문서/주석 작성 시간 절약
  - 전달받은 값이 옵셔널이 아니라면 nil체크를 하지 않더라도 안심하고 사용
    - 효율적인 코딩
    - 예외 상황을 최소화 하는 **안전한 코딩**

- enum + general 이라고 생각하면 됨

  - enum Optional\<Wrapped\> : ExpressibleByNilLiteral { 

    case none

    case some(Wrapped) 

    }

- ? 표현

  - 일반적인 옵셔널
  - type 뒤에 ?를 표시
  - enum이기 때문에 switch로 값이 있는지 체크 확인 가능
  - 기존 변수처럼 연산이 불가함
    - 옵셔널과 일반 값은 다른 타입이므로 연산 불가

- ! 표현

  - 암시적 추출 옵셔널
  - type 뒤에 !를 표시
  - enum이기 때문에 switch로 값이 있는지 체크 확인 가능
  - 기존 변수처럼 연산이 가능
  - 잘못된 사용으로 compile error 발생할 수 있음



### 옵셔널 추출 (Optional Unwrapping)

- Optional Binding - 옵셔널 바인딩
  - 옵셔널의 값을 꺼내오는 방법 중 하나
  - nil 체크 + 안전한 값 추출
  - if-let 방식
- Force Unwrapping - 옵셔널 강제 추출
  - 옵셔널의 값을 강제로 꺼내오는 방식
  - 강제 추출 시 값이 없을 경우 런타임 오류 발생
    - 런타임 오류 발생 여부가 있으므로 추천하지 않음



### 구조체 (Struct)

* 가변 프로퍼티: 구조체 내 var 키워드 이용 변수 선언
* 불변 프로퍼티: 구조체 내 let 키워드 이용 변수 선언
* 타입 프로퍼티: 구조체 내 static 키워드 이용 변수 선언, 타입 자체가 사용, 인스턴스에서 사용할 수 없음
* 인스턴스 메소드: 구조체 내 함수(func) 선언
* 타입 메소드: 구조체 내 static 키워드 이용 함수 선언, 타입 자체가 사용, 인스턴스에서 사용할 수 없음
* 가변 인스턴스: 인스턴스 내 가변 프로퍼티 등을 변경할 수 있음
* 불변 프로퍼티: 인스턴스 내 값들을 변경할 수 없음



### 클래스 (class)

* 구조체와 유사하나 구조체는 값(value) 타입이고 클래스는 참조 타입
* 다중 상속이 되지 않음
* 구조체와 동일하게 프로퍼티와 메소드를 가짐
* 2가지 타입 메소드가 존재
  * 재정의가 불가한 타입 메소드: static 키워드
  * 재정의가 가능한 타입 메소드: class 키워드
* **클래스 선언 시 var, let 사용에 상관 없이 프로퍼티가 가변이면 값을 변경할 수 있음**



### 열거형 (enum)

- 대문자 카멜케이스를 사용하여 이름을 정의함
- 각 case는 소문자로 케이스로 정의
- 각 case는 그 자체가 고유의 값
- 열거형 이름 뒤에 Hashable 프로토콜을 따르는 원시값(Int, Float, String 등..) 명시하면 enum으로 정수타입도 선언이 가능함
- String enum을 선언 후 값을 초기화 하지 않은 상태에서 해당 값을 호출할 경우(값이 없는데 호출할 경우) 해당 이름을 그대로 반환함
- rawValue를 통해 초기화가 가능
  - rawValue를 통해 초기화한 인스턴스는 해당 rawValue에 맞는 값이 없을 수 있기 때문에 옵셔널 타입임
- enum에 메소드도 정의가 가능



### 클래스 vs 구조체/열거형 (참조타입과 값타입)

- Class
  - 전통적인 OOP 관점에서의 클래스
  - 단일 상속
  - (인스턴스/타입) 메소드
  - (인스턴스/타입) 프로퍼티
  - **참조 타입**
  - Apple 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성되어 있음
- Struct
  - C 언어 등의 구조체보다 다양한 기능을 가짐
  - 상속 불가
  - (인스턴스/타입) 메소드
  - (인스턴스/타입) 프로퍼티
  - **값 타입**
  - Swift의 대부분의 큰 뼈대는 모두 구조체로 구성되어 있음
- Enum
  - 다른 언어의 열거형과는 많이 다른 존재
  - 상속 불가
  - (인스턴스/타입) 메소드
  - (인스턴스/타입) 연산 프로퍼티
  - **값 타입**
  - Enumeration
  - 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의 (ex. 요일, 상태값, 월(Month) 등)
  - **열거형 자체가 하나의 데이터 타입,**
    **열거형의 case 하나하나 전부 하나의 유의미한 값으로 취급**
  - 선언 키워드 - enum
  - ![스크린샷 2019-11-06 오후 10.50.52](/var/folders/2t/1m1d23g93gd28qsyzbskhrrh0000gn/T/TemporaryItems/(screencaptureui이(가) 문서 저장 중 8)/스크린샷 2019-11-06 오후 10.50.52.png)
- 구조체는 언제 사용하나?
  - 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶을 때
  - 다른 객체 또는 함수 등으로 전달될 때 **참조가 아닌 복사를 원할 때**
  - 자신을 상속할 필요가 없거나, 자신이 다른 타입을 **상속받을 필요가 없을 때**
  - Apple 프레임워크에서 프로그래밍을 할 때에는 주로 클래스를 많이 사용
- Value vs Reference
  - Value
    - 데이터를 전달할 때 값을 **복사하여 전달**
  - Reference
    - 데이터를 전달할 때 값의 **메모리 위치를 전달**

- Data types in Swift
  - public struct Int
  - public struct Double
  - public struct String
  - public struct Dictionary<Key : Hashable, Value>
  - public struct Array\<Element\>
  - public struct Set\<Element : Hashable\>
  - 모두 구조체로 선언되어 있음

### 컬렉션 타입(Array, Dictionary, Set)



### 기타

- 띄어쓰기에 민감하므로 띄어쓰기 잘못하면 compile error가 나올 수 있음

- 데이터 타입에 굉장히 까다로움 

  (변수를 String에 대입 불가, Float 변수를 Double 변수에 대입 불가 등등...)

- 예약어를 사용하려면 "₩"(강세 표시)로 감싸주어야 사용할 수 있음

