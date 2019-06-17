//
//  Task+CoreDataClass.swift
//  PersonalKanban
//
//  Created by Hunter Buxton on 6/16/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Task)
public class Task: NSManagedObject {

    convenience init(name: String, info: String?) {
        self.init(entity: Task.entity(), insertInto: PersistenceManager.shared.context)
        self.name = name
        self.info = info
        self.priorityLevel = 0
        self.storyPointsLevel = 0
        self.status = "STATIS STRING"
        self.timesAccessed = 0
//        self.epic
//        self.relatedTasks
//        self.blockingTasks
//        self.tasksBlocked
    }
}
