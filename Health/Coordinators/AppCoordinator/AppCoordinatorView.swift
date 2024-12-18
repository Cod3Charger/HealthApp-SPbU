//
//  AppCoordinatorView.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import SwiftUI

struct AppCoordinatorView: View {

    private let moduleFactory: ModuleFactory

    @ObservedObject private var coordinator: AppCoordinator

    init(moduleFactory: ModuleFactory, coordinator: AppCoordinator) {
        self.moduleFactory = moduleFactory
        self.coordinator = coordinator
    }

    var body: some View {
        self.scene
            .onAppear {
                self.coordinator.change(flow: .registration)
            }
    }

    @ViewBuilder
    private var scene: some View {
        switch self.coordinator.flow {
        case .registration:
            RegistrationCoordinatorView(
                moduleFactory: self.moduleFactory,
                coordinator: RegistrationCoordinator(goToNextScreen: {
                    // TODO: Change Flow
                })
            )
            .transition(.opacity)
        }
    }
}
