import Foundation

//: ## Protocols
//:
//: Swift protocols serve the same perpose as ObjC protocols.
//: * a list of methods and properties
//: * any object can conform to the protocol
//: * named using either the ObjC style "BlankDelegate"
//: * or the more Swift-y "Action-able" (e.g. Hashable, Equatable, StringConvertable)



//: To conform to the protocol, list it like a superclass (note: if you have a superclass, list that first) and implement the methods.






//: Switft protocols can have optional methods, but only by using the ObjC runtime. Generally, this is to be avoided, instead split your protocol into two separate protocols.

@objc protocol ThingDelegate { // make this an Objective C protocol
    func sayThing() // required
    optional func doThing() // optional
}

//: [Previous](@previous) | [Next](@next)
