//
//  OpaqueTypes.swift
//  OpaqueTypes
//
//  Created by Anil Choudhary on 01/08/23.
//

import UIKit

protocol Product
{
    associatedtype Code
    var productCode: Code {get}
    func description() -> String
}

struct Mouse: Product
{
    typealias Code = String
    var productCode: String

    func description() -> String { return "This is a Mouse" }
}

struct Keyboard : Product
{
    typealias Code = Int
    var productCode: Int

    func description() -> String { return "This is a Keyboard" }
}

struct Factory
{
    func makeMouse() -> some Product { return Mouse(productCode: "test") }
    
    func makeKeyboard() -> some Product { return Keyboard(productCode: 123) }

    func makeProducts() -> Mouse { return Mouse(productCode: "L1122") }

    func makeProducts() -> Keyboard { return Keyboard(productCode: 123) }
}

func SquareArrayElements<T: Numeric>(array: Array<T>) -> some Sequence
{ return array.lazy.map {$0 * $0} }

