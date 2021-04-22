/*
 
 Array: Arrays are ordered collections of values. The idea of an array is to store multiple items of the same type together. It's makes array easier to calculate the position of each element by adding an offset to a base value. An array is a mutable data type.
 
 Tuple: A tuple type is a comma-separated list of types, enclosed in parentheses. We can access tuple referring to the index number or key. A tuple is an immutable data type.
 
 
 */
import Cocoa

// Array Example
var food : [String] = ["rice","milk","egg"]
for item in food {
    print(item)
}

// Tuple Example
var person = (name: "A B M Nasim", age: 26, email: "abmnasim@gmail.com")
print("Fullname: \(person.0), Age: \(person.1), Email: \(person.2)")

// Range Example
var range = 0...10
for data in range {
    print(data)
}
// Range apply in Array
for f in 0...2{
    print(food[f])
}
