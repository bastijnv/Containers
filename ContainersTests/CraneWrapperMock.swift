//
//  CraneWrapper.swift
//  Containers
//
//  Created by  bastijn.vissers@philips.com on 19/10/15.
//
//

import Foundation
import Containers;

public class CraneWrapperMock : CraneWrapper {
    public let events = EventManager()
    
    public override init() {
        
    }
    
    public override func raise(container_id: Int32){
        events.trigger("raised", information: "raised container \(container_id)")
    }
    
    public override func lower(container_id: Int32){
        events.trigger("lowered", information: "lowered container \(container_id)")
    }
    
}