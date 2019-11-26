//
//  Models.swift
//  GeometricGlass
//
//  Created by user on 26/11/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import Foundation

// https://geometric-glass.firebaseio.com/products.json

struct Product: Decodable {
    let photoMain: String
    let price: Int
    let title: String
}
