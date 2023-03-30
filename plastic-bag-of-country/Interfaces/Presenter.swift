//
//  Presenter.swift
//  plastic-bag-of-country
//
//  Created by Peaceful Beagle on 2023/03/30.
//

import Foundation
import RxSwift

public protocol Presenter: AnyObject {
    associatedtype Input
    associatedtype Output
    
    var input: Input { get }
    var output: Output { get }
    var disposeBag: DisposeBag { get }
    var interactor: InteractorProtocol { get }
    
    init(interactor: InteractorProtocol)
}
