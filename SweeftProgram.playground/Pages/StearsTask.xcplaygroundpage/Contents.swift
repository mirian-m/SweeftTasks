import Foundation
//5 გვაქვს n სართულიანი კიბე, ერთ მოქმედებაში შეგვიძლია ავიდეთ 1 ან 2 საფეხურით. დაწერეთ ფუნქცია რომელიც დაითვლის n სართულზე ასვლის ვარიანტების რაოდენობას.
//Int countVariants(Int stearsCount);

// Using sequence of "Fibonacci numbers" to count the options for going up to the Nth floor
func fibonachiNumberAt(index: UInt64) -> UInt64 {
    if index <= 2 {
        return 1
    }
    var a: UInt64 = 1
    var b: UInt64 = 1
    var c: UInt64 = 0
    for _ in 3...index {
        c = a + b
        a = b
        b = c
    }
    return c
}
func countVariants(stears: UInt64) -> UInt64 { fibonachiNumberAt(index: stears + 1) }
// Max value of stears must be 92, Otherwise, UINT64 cannot hold a return number
let stears = UInt64.random(in: 0...92)
print(countVariants(stears: stears))

