//
//  SplashViewModel.swift
//  QuickTrain-iOS
//
//  Created by Doru Mancila on 13/11/2020.
//

import Foundation
import RxSwift
import RxCocoa
import CleanroomLogger

class SplashViewModel {
    
    private let disposeBag = DisposeBag()
    
    // MARK: - Inputs
    
    // MARK: - Outputs
    let showLogin: PublishSubject<Void> = PublishSubject<Void>()
    
    init() {

    }

    deinit {
        Log.debug?.message("deinit \(self)")
    }
}
