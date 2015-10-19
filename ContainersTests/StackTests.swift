import Quick
import Nimble
import Containers

class StackTests: QuickSpec {

    override func spec() {

        describe("stack") {
            it("Start be created") {
                expect(Stack()).toNot(beNil())
            }
            
            it("Can be checked for emptyness"){
                expect(Stack().isEmpty()).to(beTrue());
            }
            
//            it("Can pop"){
//                var stack = Stack();
//                
//            }
            
            it("Can push"){
                var stack = Stack();
                expect(stack.push(1).isEmpty()).to(beFalse());
                
            }
        }
        
        describe("Crane"){
            it("Can raise a container on top of the stack"){
                
            }
            
            it("Can lower a container from the top of the stack"){
                
            }
            
            it("Can inspect whether the stack is empty"){
                
            }
        }
    }
}