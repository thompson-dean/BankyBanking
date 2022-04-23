//
//  DecimalUtils.swift
//  BankyBanking
//
//  Created by Dean Thompson on 2022/04/23.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
