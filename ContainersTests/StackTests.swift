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
            
            it("Can pop"){
                let stack = Stack().push(1);
                expect(stack.isEmpty()).to(beFalse());
                expect(stack.pop()).to(equal(1));
                expect(stack.isEmpty()).to(beTrue());
            }
            
            it("Can push"){
                let stack = Stack();
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