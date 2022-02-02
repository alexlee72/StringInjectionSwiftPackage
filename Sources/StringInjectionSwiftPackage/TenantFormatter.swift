//
//  TenantFormatter.swift
//  StringInjectionFramework
//
//  Created by Alex Lee on 2022-02-01.
//

import Foundation

// MARK: - TenantFormatter
public struct TenantFormatter {
    public init() {}
    
    public let points = PointsFormatter()
    public let activities = ActivitiesContentFormatter(pointsFormatter: PointsFormatter())
}

// MARK: - ActivitiesContentFormatter
public struct ActivitiesContentFormatter {
    private let pointsFormatter: PointsFormatter
    
    public init(
        pointsFormatter: PointsFormatter)
    {
        self.pointsFormatter = pointsFormatter
    }
    
    func earn(points: Int) -> String? {
        if let formattedPoints = pointsFormatter.string(for: points) {
            let earnFormatted = NSLocalizedString("activities.earnFormatted", tableName: "LeagueHealthTenantStrings", value: "Earn %@", comment: "Earn points")
            return String(format: earnFormatted, formattedPoints)
        } else {
            return nil
        }
    }
}

// MARK: - PointsFormatter
public struct PointsFormatter {

    // MARK: Lifecycle

    public init() { }

    // MARK: Internal

    public func string(for points: Int) -> String? {
        guard points > 0 else {
            return nil
        }

        let pointsFormatted = points == 1 ?
            NSLocalizedString("activities.pointFormatted", tableName: "LeagueHealthTenantStrings", value: "%d point", comment: "Health program number of points - Singluar") :
            NSLocalizedString("activities.pointsFormatted", tableName: "LeagueHealthTenantStrings", value: "%d points", comment: "Health program number of points - Plural")
        
        return String(format: pointsFormatted, points)
    }
}
