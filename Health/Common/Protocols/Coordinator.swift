//
//  Coordinator.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import Foundation

protocol Coordinator: ObservableObject where Screen: Routable {
    associatedtype Screen
    var navigationPath: [Screen] { get }
}
