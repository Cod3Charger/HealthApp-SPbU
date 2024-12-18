//
//  ModuleFactory.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import Foundation

final class ModuleFactory: CoordinatorFactory {
    /*
     Here can be other factories, builders, etc
     */
}

// MARK: RegistrationViewFactory

extension ModuleFactory: RegistrationViewFactory {

    func makeRegistrationView(coordinator: RegistrationCoordinator) -> RegistrationView {

        let router = RegistrationViewModel.Router.init {
            coordinator.goToNextScreen?()
        }

        let viewModel = RegistrationViewModel(
            router: router
        )

        return RegistrationView(viewModel: viewModel)
    }
}
