//
//  Routable.swift
//  Health
//
//  Created by Сергей Дашко on 18.12.2024.
//

import Foundation

protocol Routable: Hashable, Identifiable {}

extension Routable {
    var id: String {
        String(describing: self)
    }
}
