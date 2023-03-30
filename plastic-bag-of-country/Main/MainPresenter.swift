//
//  MainPresenter.swift
//  plastic-bag-of-country
//
//  Created by Peaceful Beagle on 2023/03/30.
//

import RxSwift
import RxCocoa
import RxRelay

final class MainPresenter: Presenter {
    struct Input {
        
    }
    struct Output {
        
    }
    
    var input: Input = Input()
    var output: Output = Output()
    var disposeBag: DisposeBag = DisposeBag()
    var interactor: InteractorProtocol
    
    init(interactor: InteractorProtocol = Interactor.default) {
        self.interactor = interactor
        self.bind()
    }
    
    private func bind() {
        
    }
}
