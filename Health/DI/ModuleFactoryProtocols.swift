//
//  ModuleFactoryProtocols.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

@MainActor
protocol RegistrationViewFactory {
    func makeRegistrationView(coordinator: RegistrationCoordinator) -> RegistrationView
}
