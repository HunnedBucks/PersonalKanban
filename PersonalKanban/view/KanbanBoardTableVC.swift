//
//  KanbanBoardVC.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 4/23/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import GHTUIKit
import UIKit

class KanbanBoardTableVC: UITableViewController {
    // MARK: Instance properties
    var delegate: ChildPresentationDelegate!
    private var tasks: [Task] = []
    
    // MARK: UIViewController overrides
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tasks = PersistenceManager.shared.fetch(Task.self)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TaskCell.self, forCellReuseIdentifier: GlobalConstants.ReuseIDs.TaskCell)
    }
    
    // MARK: initializers
    convenience init(delegate: ChildPresentationDelegate) {
        self.init()
        self.delegate = delegate
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
    }
    
     // MARK: - Table view data source
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate.transitionToNewDisplay(TaskVC())
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TaskCell(tasks[indexPath.row], self) //tableView.dequeueReusableCell(withIdentifier: KanbanBoardTC.rID, for: indexPath) as! TaskCell
       // cell.textLabel?.text = tasks[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            PersistenceManager.shared.delete(tasks[indexPath.row])
            tasks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
       }
        //else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
    }

//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100.0
//    }
}

extension KanbanBoardTableVC: TaskCellTableDelegate {
    func moveTaskCellToNextStatus(_ cell: TaskCell) {
        guard let task = cell.task else {
            fatalError("a task cell attemoted to update its task's status, but task was equal to nil")
        }
       // task.incrementWorkflowStatus()
    }
}

/*
 // Override to support conditional editing of the table view.
 override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the specified item to be editable.
 return true
 }
 */

/*
 // Override to support rearranging the table view.
 override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
 
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the item to be re-orderable.
 return true
 }
 */

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */
