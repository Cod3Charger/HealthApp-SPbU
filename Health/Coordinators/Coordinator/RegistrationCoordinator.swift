//
//  RegistrationCoordinator.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import Combine

final class RegistrationCoordinator: Coordinator {

    enum Screen: Routable {
        case registration
    }

    @Published var navigationPath: [Screen] = []

    var goToNextScreen: (() -> Void)?

    init(goToNextScreen: (() -> Void)? = nil) {
        self.goToNextScreen = goToNextScreen
    }

    func popToRoot() {
        navigationPath.removeAll()
        navigationPath.append(.registration)
    }

    func pop() {
        if !navigationPath.isEmpty {
            navigationPath.removeLast()
        }
    }

    func push(screen: Screen) {
        navigationPath.append(screen)
    }
}
