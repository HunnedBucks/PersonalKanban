//
//  Constants.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 6/16/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import Foundation

struct EnumeratedConstants {
    // MARK: TaskStatus constants
    struct ForTaskStatus {
        static let archived = "Archived"
        static let backlog = "Backlog"
        static let toDo = "To-Do"
        static let inProgress = "In Progress"
        static let complete = "Complete"
        static let stringToEnumMap: [String : TaskStatus] = [
            archived : .Archived,
            backlog : .Backlog,
            toDo : .ToDo,
            inProgress : .InProgress,
            complete : .Complete
        ]
        static let intMap: [TaskStatus : Int] = [
            .Archived : 1,
            .Backlog: 2,
            .ToDo : 3,
            .InProgress : 4,
            .Complete : 5
        ]
    }
    
    struct ForPriority {
        static let unassigned = "-"
        static let low = "Low"
        static let medium = "Medium"
        static let high = "High"
        static let highest = "Highest"
        static let priorityStringToEnumMap: [String : TaskPriority] = [
            unassigned : .Unassigned,
            low : .Low,
            medium : .Medium,
            high : .High,
            highest : .Highest
        ]
        static let priorityEnumToIntMap: [Int : TaskPriority] = [
            //0 : .Unassigned,
            1 : .Low,
            2 : .Medium,
            3 : .High,
            4 : .Highest
        ]
    }
    
    struct ForStoryPoints {
        struct CountingNumbers {
            static let intToEnumMap: [Int: StoryPointRank] = [
                0 : .Unassigned,
                1 : .First,
                2 : .Second,
                3 : .Third,
                4 : .Fourth,
                5 : .Fifth,
                6 : .Sixth
            ]
            static let enumToIntMao: [StoryPointRank : Int] = [
                .Unassigned : 0,
                .First : 1,
                .Second : 2,
                .Third : 3,
                .Fourth : 4,
                .Fifth : 5,
                .Sixth : 6
            ]
        }
        struct PowerTwoSequence {
            static let intToEnumMap: [Int: StoryPointRank] = [
                0 : .Unassigned,
                1 : .First,
                2 : .Second,
                4 : .Third,
                8 : .Fourth,
                16 : .Fifth,
                32 : .Sixth
            ]
            static let enumToIntMao: [StoryPointRank : Int] = [
                .Unassigned : 0,
                .First : 1,
                .Second : 2,
                .Third : 4,
                .Fourth : 8,
                .Fifth : 16,
                .Sixth : 32
            ]
        }
        struct fibonacciSequence {
            static let intToEnumMap: [Int: StoryPointRank] = [
                0 : .Unassigned,
                1 : .First,
                2 : .Second,
                3 : .Third,
                5 : .Fourth,
                8 : .Fifth,
                13 : .Sixth
            ]
            static let enumToIntMao: [StoryPointRank : Int] = [
                .Unassigned : 0,
                .First : 1,
                .Second : 2,
                .Third : 3,
                .Fourth : 5,
                .Fifth : 8,
                .Sixth : 13
            ]
        }
    }
}

struct GlobalConstants {
    struct ReuseIDs {
        static let TaskCell = "TaskCell Reuse ID"
        static let EpicCell = "EpicCell Reuse ID"
    }
    
    struct imageLiteralResourceNames {
        static let horizontalDotsIcon = "horizontalDotsIcon.png"
        static let upArrow = "upArrow.png"
        static let hamburgerMenuIcon = "hamburgerMenuIcon.png"
    }
}
