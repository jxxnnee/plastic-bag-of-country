//
//  ViewController.swift
//  plastic-bag-of-country
//
//  Created by Peaceful Beagle on 2023/03/30.
//

import UIKit

public class ViewController<Base: View>: UIViewController {
    var rootView: Base
    
    public override func loadView() {
        self.view = self.rootView
    }
    
    init(rootView: Base) {
        self.rootView = rootView
        super.init(nibName: nil, bundle: nil)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
