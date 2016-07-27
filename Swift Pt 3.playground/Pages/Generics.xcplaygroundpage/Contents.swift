//: ## Generics
//: Generics can be very intimidating, but don't be scared: at this point you've already used them!
//: Swift arrays and dictionaries are generic classes.
//: Let's create our own container class:
class StringBox {
    
    var input:String?
    
    func input(input:String){
        self.input = input
    }
    
    func readInput() -> String? {
        return self.input
    }
    
}


let aStringBox = StringBox()
aStringBox.input("Dan")
aStringBox.readInput()

//: Ok, perfect, but now I want an IntBox. As we write this out, notice that the only thing that changes between the two classes is the type "String" is swapped out for "Int".
class IntBox {
    
    var input:Int?
    
    func input(input:Int){
        self.input = input
    }
    
    func readInput() -> Int? {
        return self.input
    }
    
}


let anIntBox = IntBox()
anIntBox.input(4)
anIntBox.readInput()


class Box<T> {
    
    var input:T?
    
    func input(input:T){
        self.input = input
    }
    
    func readInput() -> T? {
        return self.input
    }
    
}

let aBox = Box<Int>()
aBox.input(8)
aBox.readInput()



// Make an Int version of our StringBox class

//: We could use `AnyObject` to create a box that stores any object, but then we'd lose the safety of knowing that our box can only contain a single type.  
//: 
//: Using generics, I can create a single class "Box" that can hold strings OR ints (or Cars or Shapes or anything).

// make a generic verison of StringBox/IntBox












//: This is exactly how Array and Dictonary are defined. When we write `[String]` it's shorthand for `Array<String>`.
//:
//: Generics can be used at the class level, like we just did, or at the function level:

//: [Previous](@previous) | [Next](@next)
