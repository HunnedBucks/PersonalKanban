//
//  Enums.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 6/16/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import Foundation

enum TaskStatus: CaseIterable {
    case Archived
    case Backlog
    case ToDo
    case InProgress
    case Complete
    
    init?(fromString str: String) {
        if let enumeratedStatus = EnumeratedConstants.ForTaskStatus.stringToEnumMap[str] {
             self = enumeratedStatus
        } else {
            return nil
        }
    }
}

extension TaskStatus {
    func toString() -> String {
        switch self {
        case .Archived: return EnumeratedConstants.ForTaskStatus.archived
        case .Backlog: return EnumeratedConstants.ForTaskStatus.backlog
        case .ToDo: return EnumeratedConstants.ForTaskStatus.toDo
        case .InProgress: return EnumeratedConstants.ForTaskStatus.inProgress
        case .Complete: return EnumeratedConstants.ForTaskStatus.complete
        }
    }
    
    func rank() -> Int {
         return EnumeratedConstants.ForTaskStatus.intMap[self]!
    }
    
    func isGreaterThan(_ status: TaskStatus) -> Bool {
        return status.rank() < self.rank()
    }
}

enum TaskPriority: CaseIterable {
    case Unassigned
    case Low
    case Medium
    case High
    case Highest
}

enum StoryPointRank: CaseIterable {
    case Unassigned
    case First
    case Second
    case Third
    case Fourth
    case Fifth
    case Sixth
}

