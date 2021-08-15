//
//  Model.swift
//  Track_your_steps
//
//  Created by Sunita Nhemafuki on 8/14/21.
//  Copyright © 2021 Sunita Nhemafuki. All rights reserved.
//

import Foundation

struct Step: Identifiable {
    let id = UUID()
    let count: Int
    let date: Date
}
