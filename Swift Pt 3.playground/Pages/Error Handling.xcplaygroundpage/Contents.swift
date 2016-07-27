//: ## Error Handling
//: In Objective C, we used this type of syntax to get information about an error:
//:
//:    NSError *err = nil;
//:    if (![data writeToFile:path error:&err]) {
//:        NSLog(@"Error writing to file %@", err);
//:    }
//:
//: We used the return value get a BOOL indicating success, and an error reference to get an object describing any problems encountered.
//:
//: Swift replaces this with do-try syntax.

import UIKit

let jsonString = "{\"someKey\" : \"someValue\"}"
//: A string containing valid json
let jsonData = jsonString.dataUsingEncoding(NSUTF8StringEncoding)!
//: Convert the string to NSData (could fail, so force-unwrap)
//: Now decode it:
do {
    let dictionary = try NSJSONSerialization.JSONObjectWithData(jsonData, options: [])
}catch {
    print("I have gotten an error")
}

//: Any method marked "throws" needs to be called using `try`.
//: Our three options are:
//:
//: 1. `try!`
//:     * Crash if the method throws an error
//:     * Risky!
//: 2. `try?`
//:     * Return nil if the method throws an error
//:     * Won't crash, but we can't handle different errors differently, or provide users feedback about what went wrong.
//: 3. `do { try method() } catch {}`
//:     * Jump to the catch block if anything we "try" in the do block throws an error.
//:     * The most "right".

//: ## Demo:
//: decode json using each method


//: ## Throwing stuff
//: To throw, we have to define our possible errors:
//enum MyErrors : ErrorType {
//    
//    case BlankInput
//    
//}
//
//func validate(input:String?) throws -> Bool {
//
//    guard let _ = input else {
//        throw MyErrors.BlankInput
//    }
//    
//    return true
//    
//}
//
//
//do {
//    try validate(nil)
//    try validate("Hello")
//    
//}catch MyErrors.BlankInput {
//    
//    
//    
//}



//: Now let's use this function to handle some input




//: [Previous](@previous) | [Next](@next)
