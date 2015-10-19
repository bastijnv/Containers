import Foundation

public class Stack {

    var empty = true;
    
    public init() {

    }

    public func isEmpty() -> Bool {
        return empty;
    }
    
    public func push(id: Int) -> Stack{
        empty = false;
        return self;
    }
    
    public func pop() -> Stack{
        empty = true;
        return self;
    }
    
}