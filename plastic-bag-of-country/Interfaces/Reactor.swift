//
//  Reactor.swift
//  plastic-bag-of-country
//
//  Created by Peaceful Beagle on 2023/03/30.
//

import RxSwift
import WeakMapTable

private typealias AnyView = AnyObject
private enum MapTables {
    static let binder = WeakMapTable<AnyView, Any>()
}

public protocol Reactor: UIViewController {
    associatedtype Presenter: plastic_bag_of_country.Presenter
    
    var disposeBag: DisposeBag { get set }
    var binder: Presenter? { get set }
    
    func bind(_ binder: Presenter)
}

extension Reactor {
    public var binder: Presenter? {
        get {
            MapTables.binder.value(forKey: self) as? Presenter
        }
        set {
            MapTables.binder.setValue(newValue, forKey: self)
            self.disposeBag = DisposeBag()
            if let binder = newValue {
                self.bind(binder)
            }
        }
    }
}
