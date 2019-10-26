import Swift

// #### for - in 구문 ###
var integers = [1, 2, 3] // Array타입
let peoples = ["txxbro": 27, "yagom": 15, "hhoo": 47] // Dictonary 타입

for integer in integers {
    print(integer)
}

// Dictonary 의 item은 key-value로 구성
for (name, age) in peoples {
    print("\(name)의 나이는 \(age)")
}

// #### while 문 ####
while integers.count > 1 {
    integers.removeLast()
}

// #### repeat - while 문 ####
repeat {
    integers.removeLast()
} while integers.count > 0
