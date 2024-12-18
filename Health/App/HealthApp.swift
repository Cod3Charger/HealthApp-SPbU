//
//  HealthApp.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import SwiftUI

@main
struct HealthApp: App {

    private let moduleFactory: ModuleFactory = {
            return ModuleFactory()
        }()

    private let appCoordinator = AppCoordinator()

    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(moduleFactory: moduleFactory, coordinator: appCoordinator)
        }
    }
}
