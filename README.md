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

### 컬렉션 타입(Array, Dictionary, Set)



### 기타

- 띄어쓰기에 민감하므로 띄어쓰기 잘못하면 compile error가 나올 수 있음

- 데이터 타입에 굉장히 까다로움 

  (변수를 String에 대입 불가, Float 변수를 Double 변수에 대입 불가 등등...)

