import Foundation
//4. მოცემულია String რომელიც შედგება „(„ და „)“ ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.
//Boolean isProperly(String sequence);
//მაგ: (()()) სწორი მიმდევრობაა,  ())() არასწორია

func checkBrackets (input: String) -> Bool {
    var arrayOfSimbols = [Character]()
    var isCorrect = true
    for char in input {
        if char == "(" {
            arrayOfSimbols.append(char)
        } else if !arrayOfSimbols.isEmpty {
            arrayOfSimbols.removeLast()
        } else {
            isCorrect = false
            break
        }
    }
    return isCorrect && arrayOfSimbols.isEmpty
}
let input = "())()"
if checkBrackets(input: input) {
    print("GIVEN STRING \(input) IS CORRECT")
} else {
    print("GIVEN STRING \(input) IS INCORRECT")
}
