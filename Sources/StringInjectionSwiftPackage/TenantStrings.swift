//
//  TenantStrings.swift
//  StringInjectionFramework
//
//  Created by Alex Lee on 2022-02-01.
//

import Foundation

// MARK: - TenantStrings
public struct TenantStrings {
    public init() {}
    
    public lazy var tabTitle: String = {
        NSLocalizedString("tabTitle", tableName: "LeagueHealthTenantStrings", value: "Journey", comment: "Journey tab bar item title")
    }()
    public var common = CommonStrings()
    public var activities = ActivitiesStrings()
    public var programs = ProgramsStrings()
    public var progress = ProgressStrings()
}

// MARK: - Common
public struct CommonStrings {
    public lazy var add: String = {
        NSLocalizedString("common.add", tableName: "LeagueHealthTenantStrings", value: "Add", comment: "Add")
    }()
    public lazy var back: String = {
        NSLocalizedString("common.back", tableName: "LeagueHealthTenantStrings", value: "Back", comment: "Back")
    }()
    public lazy var suggested: String = {
        NSLocalizedString("common.suggested", tableName: "LeagueHealthTenantStrings", value: "Suggested", comment: "Cancel")
    }()
}

// MARK: - Activities
public struct ActivitiesStrings {
    public lazy var title: String = {
        NSLocalizedString("activities.title", tableName: "LeagueHealthTenantStrings", value: "Activities", comment: "Journey activities title")
    }()
    public var homefeed = ActivitiesHomefeedStrings()
    public var list = ActivitiesListStrings()
}

public struct ActivitiesHomefeedStrings {
    public lazy var sectionTitle: String = {
        NSLocalizedString("activities.homefeed.sectionTitle", tableName: "LeagueHealthTenantStrings", value: "Your Journey", comment: "Journey section title")
    }()
    public lazy var todaySectionTitle: String = {
        NSLocalizedString("activities.homefeed.todaySectionTitle", tableName: "LeagueHealthTenantStrings", value: "Today", comment: "Today activities header title")
    }()
    public lazy var upcomingSectionTitle: String = {
        NSLocalizedString("activities.homefeed.upcomingSectionTitle", tableName: "LeagueHealthTenantStrings", value: "Upcoming", comment: "Upcoming activities header title")
    }()
}

public struct ActivitiesListStrings {
    public lazy var sectionTitleToday: String = {
        NSLocalizedString("activities.list.sectionTitleToday", tableName: "LeagueHealthTenantStrings", value: "Today", comment: "Journey activities today section title")
    }()
    public lazy var sectionTitleWeek: String = {
        NSLocalizedString("activities.list.sectionTitleWeek", tableName: "LeagueHealthTenantStrings", value: "This week", comment: "Journey activities week section titl")
    }()
    public lazy var sectionTitleLater: String = {
        NSLocalizedString("activities.list.sectionTitleLater", tableName: "LeagueHealthTenantStrings", value: "Later", comment: "Journey activities later section title")
    }()
    public lazy var sectionTitleUpcoming: String = {
        NSLocalizedString("activities.list.sectionTitleUpcoming", tableName: "LeagueHealthTenantStrings", value: "Preview", comment: "Journey activities preview section title")
    }()
    public lazy var previewCardTitle: String = {
        NSLocalizedString("activities.list.previewCardTitle", tableName: "LeagueHealthTenantStrings", value: "See what’s coming up next", comment: "Title for preview card")
    }()
    public lazy var previewCardDescription: String = {
        NSLocalizedString("activities.list.previewCardDescription", tableName: "LeagueHealthTenantStrings", value: "Get a sneak peek at activities that will be available soon.", comment: "Description for preview card")
    }()
}

// MARK: - Programs
public struct ProgramsStrings {
    public var homefeed = ProgramsHomefeedStrings()
    public var library = ProgramsLibraryStrings()
}

public struct ProgramsHomefeedStrings {
    public lazy var sectionTitle: String = {
        NSLocalizedString("programs.homefeed.sectionTitle", tableName: "LeagueHealthTenantStrings", value: "View all programs", comment: "Button title to view all programs")
    }()
}

public struct ProgramsLibraryStrings {
    public lazy var title: String = {
        NSLocalizedString("programs.library.title", tableName: "LeagueHealthTenantStrings", value: "Program Library", comment: "Program library title")
    }()
}

// MARK: - Progress
public struct ProgressStrings {
    public lazy var title: String = {
        NSLocalizedString("progress.title", tableName: "LeagueHealthTenantStrings", value: "Progress", comment: "Journey progress title")
    }()
}
