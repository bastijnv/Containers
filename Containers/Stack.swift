import Foundation

public class Stack {

    var list = [Int32]()
    let crane : CraneWrapper;
    
    public init(crane : CraneWrapper = CraneWrapper()) {
        self.crane = crane
    }

    public func isEmpty() -> Bool {
        return list.isEmpty
    }
    
    public func push(id: Int32) -> Stack{
        list.append(id)
        crane.raise(id)
        return self
    }
    
    public func pop() -> Int32{
        let removed = list.removeLast()
        crane.lower(removed)
        return removed
    }
    
}