//
//  Box.swift
//  Sora
//
//  Created by Riley Testut on 3/19/17.
//  Copyright © 2017 Riley Testut. All rights reserved.
//

import Foundation

public class Box<T>
{
    public let value: T
    
    public init(_ value: T)
    {
        self.value = value
    }
}

public extension Box where T: Hashable
{
    var hashValue: Int {
        return self.value.hashValue
    }
}

public extension Box where T: Equatable
{
    static func ==(lhs: Box, rhs: Box) -> Bool
    {
        return lhs.value == rhs.value
    }
}
