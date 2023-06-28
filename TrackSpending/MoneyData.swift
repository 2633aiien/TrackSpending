//
//  MoneyData.swift
//  TrackSpending
//
//  Created by allen on 2023/5/17.
//

import Foundation


struct MoneyData: Identifiable {
    var id = UUID()

    let date: Date
    let money: Double

    init(year: Int, month: Int, day: Int, money: Double) {
        self.date = Calendar.current.date(from: .init(year: year, month: month, day: day)) ?? Date()
        self.money = money
    }
}
