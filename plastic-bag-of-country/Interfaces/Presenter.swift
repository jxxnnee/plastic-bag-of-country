//
//  Presenter.swift
//  plastic-bag-of-country
//
//  Created by Peaceful Beagle on 2023/03/30.
//

import Foundation

public protocol Presenter: AnyObject {
    associatedtype Input
    associatedtype Output
    
    var input: Input { get }
    var output: Output { get }
}
