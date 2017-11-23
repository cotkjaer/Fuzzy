//
//  Fuzzy.swift
//  Fuzzy
//
//  Created by Christian Otkjær on 23/11/2017.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

public protocol FuzzyEquatable
{
    static func ≈≈ (lhs: Self, rhs: Self) -> Bool
}

///Fuzzy equality
infix operator ≈≈ : ComparisonPrecedence

///Fuzzy inequality
infix operator !≈ : ComparisonPrecedence

public func !≈ <T: FuzzyEquatable> (lhs: T, rhs: T) -> Bool
{
    return !(lhs ≈≈ rhs)
}

// MARK: Default

public func ≈≈ <F:FloatingPoint> (lhs: F, rhs: F) -> Bool
{
    let epsilon = F.ulpOfOne * 5
    
    return lhs + epsilon > rhs && lhs - epsilon < rhs
}

