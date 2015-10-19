import Quick
import Nimble
import Containers

class StackTests: QuickSpec {

    override func spec() {

        describe("stack") {
            var stack : Stack!
            
            beforeEach(){
                stack = Stack(crane: CraneWrapperMock())
            }
            
            it("Start be created") {
                expect(stack).toNot(beNil())
            }
            
            it("Can be checked for emptyness"){
                expect(stack.isEmpty()).to(beTrue());
            }
            
            it("Can pop"){
                stack.push(6);
                expect(stack.pop()).to(equal(6));
                
            }
            
            it("Can push"){
                expect(stack.push(1).isEmpty()).to(beFalse());
            }
        }
        
        describe("Crane"){
            it("Can raise a container on top of the stack"){
                var raised = false;
                let crane = CraneWrapperMock()
                let stack = Stack(crane: crane).push(1);
                crane.events.listenTo("raised", action: {
                    raised = true;
                });
                stack.push(1);
                expect(raised).to(beTrue());
            }
            
            it("Can lower a container from the top of the stack"){
                var raised = false;
                let crane = CraneWrapperMock()
                let stack = Stack(crane: crane).push(1);
                crane.events.listenTo("lowered", action: {
                    raised = true;
                });
                stack.pop();
                expect(raised).to(beTrue());
            }
        }
    }
}