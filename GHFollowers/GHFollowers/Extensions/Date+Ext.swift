//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Nuriddinov Subkhiddin on 12/11/22.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM YYYY"
        
        return dateFormatter.string(from: self )
    }
}
