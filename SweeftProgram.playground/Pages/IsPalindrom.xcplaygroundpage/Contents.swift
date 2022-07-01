import Foundation
//1. დაწერეთ ფუნქცია, რომელსაც გადაეცემა ტექსტი  და აბრუნებს პალინდრომია თუ არა. (პალინდრომი არის ტექსტი რომელიც ერთნაირად იკითხება ორივე მხრიდან).
//Boolean isPalindrome(String text);

func isPalindrome(text: String) -> Bool {
    let tempArray = Array(text.lowercased())
    if tempArray == tempArray.reversed() {
        return true
    }
    return false
}
