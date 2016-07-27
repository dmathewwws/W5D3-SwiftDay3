//: ## Downcasting
//: There are two directions we can move in with types.
//: 
//: First: we can go from something specific (Dog) to something more general (Animal). This is called upcasting, or type erasure.




//: To go the other way, from something general (Animal) to something specific (Dog), however, is not seamless.

//let someDog: Dog = someAnimal // we can't assume any animal is going to be a dog.

//: To go from general to specific, we need to "Downcast". This is a forced downcast:


//: This is a conditional downcast. It will always return an optional, because we can't know ahead of time if someAnimal is a dog or not.


//: This same concept occurred every time we stored an object in an Array in Objective C. 
//: 
//:     [myArray addObject:dog];
//:     Dog *dog = myArray[0]; // implicit downcast.
//:     
//: Swift forces us to describe our casts explicitly, so the compiler can enforce safety.




//:
//: [Previous](@previous) | [Next](@next)
