import Foundation

//6. დაწერეთ საკუთარი მონაცემთა სტრუქტურა, რომელიც საშუალებას მოგვცემს O(1) დროში წავშალოთ ელემენტი.

// create generic struct MyDataStructure
struct MyDataStructure<T: Comparable> {
    public var list: [T]
    public mutating func remove(Item: T) {
        if self.list.contains(where: { $0 == Item }) {
            self.list.removeAll { $0 == Item }
        }
    }
    init(list: [T]) {
        self.list = list
    }
}
var test = MyDataStructure<Int>(list: [2,3,4,5,6,7,3])
print("Before removing Item \(test.list)")
test.remove(Item: 4)
print("After removing Item 4 \(test.list)")
