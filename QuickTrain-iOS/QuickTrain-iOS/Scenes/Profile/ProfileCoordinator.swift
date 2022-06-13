//
//  ProfileCoordinator.swift
//  QuickTrain-iOS
//
//  Created by Doru Mancila on 29.01.2021.
//

import Foundation
import UIKit
import Reusable
import CleanroomLogger
import RxSwift

class ProfileCoordinator: BaseCoordinator<Void> {
    private var rootViewController: UIViewController
    var navigationController: UINavigationController?
    var viewController: UIViewController!
    
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }

    override func start() -> Observable<CoordinationResult> {
        let viewModel = ProfileViewModel()
        let viewController = ProfileViewController.instantiate()
        
        navigationController = UINavigationController(rootViewController: viewController)
        
        viewController.viewModel = viewModel
        
        navigationController?.modalPresentationStyle = .fullScreen
        self.viewController = viewController
        
        rootViewController.present(navigationController!, animated: true, completion: nil)
        
        return .never()
    }
    
    deinit {
        Log.debug?.message("deinit \(self)")
    }
}
