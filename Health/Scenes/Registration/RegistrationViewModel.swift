//
//  RegistrationViewModel.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import Combine

final class RegistrationViewModel: ObservableObject {
    let router: Router

    init(router: Router) {
        self.router = router
    }
}

// MARK: - Router

extension RegistrationViewModel {
    struct Router {
        let navigateToNextScreen: () -> Void
    }
}
