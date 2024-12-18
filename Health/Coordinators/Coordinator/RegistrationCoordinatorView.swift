//
//  RegistrationCoordinatorView.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import SwiftUI

struct RegistrationCoordinatorView: View {

    private let moduleFactory: CoordinatorFactory

    @StateObject private var coordinator: RegistrationCoordinator

    init(moduleFactory: CoordinatorFactory, coordinator: RegistrationCoordinator) {
        self.moduleFactory = moduleFactory
        self._coordinator = StateObject(wrappedValue: coordinator)
    }

    var body: some View {
        NavigationStack(
            path: self.$coordinator.navigationPath) {
                self.destination(.registration)
                    .navigationDestination(for: RegistrationCoordinator.Screen.self) {
                        self.destination($0)
                            .navigationBarBackButtonHidden()
                    }
            }
    }

    @ViewBuilder
    private func destination(_ screen: RegistrationCoordinator.Screen) -> some View {
        switch screen {
        case .registration:
            self.moduleFactory.makeRegistrationView(coordinator: self.coordinator)
        }
    }
}
