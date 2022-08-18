//
//  DecimalUtil.swift
//  Bankey
//
//  Created by Justin Allen on 8/18/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
