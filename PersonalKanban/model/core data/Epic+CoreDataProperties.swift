//
//  Epic+CoreDataProperties.swift
//  PersonalKanban
//
//  Created by Hunter Buxton on 6/16/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//
//

import Foundation
import CoreData


extension Epic {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Epic> {
        return NSFetchRequest<Epic>(entityName: "Epic")
    }

    @NSManaged public var name: String?
    @NSManaged public var info: String?
    @NSManaged public var dateCreated: NSDate?
    @NSManaged public var tasks: NSOrderedSet?

}

// MARK: Generated accessors for tasks
extension Epic {

    @objc(insertObject:inTasksAtIndex:)
    @NSManaged public func insertIntoTasks(_ value: Task, at idx: Int)

    @objc(removeObjectFromTasksAtIndex:)
    @NSManaged public func removeFromTasks(at idx: Int)

    @objc(insertTasks:atIndexes:)
    @NSManaged public func insertIntoTasks(_ values: [Task], at indexes: NSIndexSet)

    @objc(removeTasksAtIndexes:)
    @NSManaged public func removeFromTasks(at indexes: NSIndexSet)

    @objc(replaceObjectInTasksAtIndex:withObject:)
    @NSManaged public func replaceTasks(at idx: Int, with value: Task)

    @objc(replaceTasksAtIndexes:withTasks:)
    @NSManaged public func replaceTasks(at indexes: NSIndexSet, with values: [Task])

    @objc(addTasksObject:)
    @NSManaged public func addToTasks(_ value: Task)

    @objc(removeTasksObject:)
    @NSManaged public func removeFromTasks(_ value: Task)

    @objc(addTasks:)
    @NSManaged public func addToTasks(_ values: NSOrderedSet)

    @objc(removeTasks:)
    @NSManaged public func removeFromTasks(_ values: NSOrderedSet)

}
