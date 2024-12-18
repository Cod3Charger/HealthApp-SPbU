//
//  AppCoordinator.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import SwiftUI

final class AppCoordinator: ObservableObject {

    enum Flow {
        case registration
    }

    @Published var flow: Flow = .registration

    func change(flow: Flow) {
        self.flow = flow
    }
}
