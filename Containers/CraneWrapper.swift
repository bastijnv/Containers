//
//  CraneWrapper.swift
//  Containers
//
//  Created by  bastijn.vissers@philips.com on 19/10/15.
//
//

import Foundation

public class CraneWrapper {
    
    public init(){
        
    }
    
    public func raise(container_id: Int32){
        raise_container(container_id)
    }
    
    public func lower(container_id: Int32){
        lower_container(container_id)
        
    }
}