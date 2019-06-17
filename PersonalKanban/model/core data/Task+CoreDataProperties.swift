//
//  Task+CoreDataProperties.swift
//  PersonalKanban
//
//  Created by Hunter Buxton on 6/16/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var name: String?
    @NSManaged public var info: String?
    @NSManaged public var priorityLevel: Int32
    @NSManaged public var storyPointsLevel: Int32
    @NSManaged public var status: String?
    @NSManaged public var timesAccessed: Int32
    @NSManaged public var epic: Epic?
    @NSManaged public var relatedTasks: NSOrderedSet?
    @NSManaged public var blockingTasks: NSOrderedSet?
    @NSManaged public var tasksBlocked: NSOrderedSet?

}

// MARK: Generated accessors for relatedTasks
extension Task {

    @objc(insertObject:inRelatedTasksAtIndex:)
    @NSManaged public func insertIntoRelatedTasks(_ value: Task, at idx: Int)

    @objc(removeObjectFromRelatedTasksAtIndex:)
    @NSManaged public func removeFromRelatedTasks(at idx: Int)

    @objc(insertRelatedTasks:atIndexes:)
    @NSManaged public func insertIntoRelatedTasks(_ values: [Task], at indexes: NSIndexSet)

    @objc(removeRelatedTasksAtIndexes:)
    @NSManaged public func removeFromRelatedTasks(at indexes: NSIndexSet)

    @objc(replaceObjectInRelatedTasksAtIndex:withObject:)
    @NSManaged public func replaceRelatedTasks(at idx: Int, with value: Task)

    @objc(replaceRelatedTasksAtIndexes:withRelatedTasks:)
    @NSManaged public func replaceRelatedTasks(at indexes: NSIndexSet, with values: [Task])

    @objc(addRelatedTasksObject:)
    @NSManaged public func addToRelatedTasks(_ value: Task)

    @objc(removeRelatedTasksObject:)
    @NSManaged public func removeFromRelatedTasks(_ value: Task)

    @objc(addRelatedTasks:)
    @NSManaged public func addToRelatedTasks(_ values: NSOrderedSet)

    @objc(removeRelatedTasks:)
    @NSManaged public func removeFromRelatedTasks(_ values: NSOrderedSet)

}

// MARK: Generated accessors for blockingTasks
extension Task {

    @objc(insertObject:inBlockingTasksAtIndex:)
    @NSManaged public func insertIntoBlockingTasks(_ value: Task, at idx: Int)

    @objc(removeObjectFromBlockingTasksAtIndex:)
    @NSManaged public func removeFromBlockingTasks(at idx: Int)

    @objc(insertBlockingTasks:atIndexes:)
    @NSManaged public func insertIntoBlockingTasks(_ values: [Task], at indexes: NSIndexSet)

    @objc(removeBlockingTasksAtIndexes:)
    @NSManaged public func removeFromBlockingTasks(at indexes: NSIndexSet)

    @objc(replaceObjectInBlockingTasksAtIndex:withObject:)
    @NSManaged public func replaceBlockingTasks(at idx: Int, with value: Task)

    @objc(replaceBlockingTasksAtIndexes:withBlockingTasks:)
    @NSManaged public func replaceBlockingTasks(at indexes: NSIndexSet, with values: [Task])

    @objc(addBlockingTasksObject:)
    @NSManaged public func addToBlockingTasks(_ value: Task)

    @objc(removeBlockingTasksObject:)
    @NSManaged public func removeFromBlockingTasks(_ value: Task)

    @objc(addBlockingTasks:)
    @NSManaged public func addToBlockingTasks(_ values: NSOrderedSet)

    @objc(removeBlockingTasks:)
    @NSManaged public func removeFromBlockingTasks(_ values: NSOrderedSet)

}

// MARK: Generated accessors for tasksBlocked
extension Task {

    @objc(insertObject:inTasksBlockedAtIndex:)
    @NSManaged public func insertIntoTasksBlocked(_ value: Task, at idx: Int)

    @objc(removeObjectFromTasksBlockedAtIndex:)
    @NSManaged public func removeFromTasksBlocked(at idx: Int)

    @objc(insertTasksBlocked:atIndexes:)
    @NSManaged public func insertIntoTasksBlocked(_ values: [Task], at indexes: NSIndexSet)

    @objc(removeTasksBlockedAtIndexes:)
    @NSManaged public func removeFromTasksBlocked(at indexes: NSIndexSet)

    @objc(replaceObjectInTasksBlockedAtIndex:withObject:)
    @NSManaged public func replaceTasksBlocked(at idx: Int, with value: Task)

    @objc(replaceTasksBlockedAtIndexes:withTasksBlocked:)
    @NSManaged public func replaceTasksBlocked(at indexes: NSIndexSet, with values: [Task])

    @objc(addTasksBlockedObject:)
    @NSManaged public func addToTasksBlocked(_ value: Task)

    @objc(removeTasksBlockedObject:)
    @NSManaged public func removeFromTasksBlocked(_ value: Task)

    @objc(addTasksBlocked:)
    @NSManaged public func addToTasksBlocked(_ values: NSOrderedSet)

    @objc(removeTasksBlocked:)
    @NSManaged public func removeFromTasksBlocked(_ values: NSOrderedSet)

}
