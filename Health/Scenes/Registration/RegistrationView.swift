//
//  RegistrationView.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel: RegistrationViewModel

    init(viewModel: RegistrationViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            Text("Registration View")
        }
        .padding()
    }
}
