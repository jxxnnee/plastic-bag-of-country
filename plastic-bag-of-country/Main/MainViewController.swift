//
//  MainViewController.swift
//  plastic-bag-of-country
//
//  Created by Peaceful Beagle on 2023/03/30.
//

import UIKit
import RxSwift

final class MainViewController: ViewController<MainView> {
    // MARK: Properties
    var disposeBag: DisposeBag = DisposeBag()
    var binder: MainPresenter?
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.rootView.backgroundColor = .brown
    }
}



extension MainViewController: Reactor {
    func bind(_ binder: MainPresenter) {
        
    }
}
