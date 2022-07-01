import Foundation
//3. მოცემულია მასივი, რომელიც შედგება მთელი რიცხვებისგან. დაწერეთ ფუნქცია რომელსაც გადაეცემა ეს მასივი და აბრუნებს მინიმალურ მთელ რიცხვს, რომელიც 0-ზე მეტია და ამ მასივში არ შედის.
//
//Int notContains(Int[] array);

func notContains(array: [Int]) -> Int {
    let maxNumberInArray = array.max()!
    if maxNumberInArray <= 0 {
        return 1
    }
    for number in 1...maxNumberInArray {
        if !array.contains(number) {
            return number
        }
    }
    return maxNumberInArray + 1
}
