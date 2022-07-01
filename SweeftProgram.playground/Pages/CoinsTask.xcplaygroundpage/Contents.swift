import Foundation
//2. გვაქვს 1,5,10,20 და 50 თეთრიანი მონეტები. დაწერეთ ფუნქცია, რომელსაც გადაეცემა თანხა (თეთრებში) და აბრუნებს მონეტების მინიმალურ რაოდენობას, რომლითაც შეგვიძლია ეს თანხა დავახურდაოთ.
//Int minSplit(Int amount);

let coins = [1, 5, 10, 20, 50].sorted { $0 > $1 }
func minSplit(amount: inout Int) -> Int {
    var count: Int = 0
    for coin in coins {
        count += amount / coin
        amount = amount % coin
        if amount == 0 {
            break
        }
    }
    return count
}
var amount = 99
print(minSplit(amount: &amount))
