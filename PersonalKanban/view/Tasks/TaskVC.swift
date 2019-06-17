//
//  ViewTaskVC.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 5/19/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import GHTUIKit
import UIKit

class TaskVC: EditableContentNavTemplate {
    
    var task: Task!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupEditorVC() -> UIViewController {
        let e = TaskEditor() //self.editor ?? TaskEditor()
        e.delegate = self
        e.task = self.task
        return e
    }
    
    override func setupViewerVC() -> UIViewController {
        let r = TaskReaderVC()//self.reader ?? TaskReaderVC()
        r.delegate = self
        r.task = self.task
        return r
    }
    
    @objc override func back() {
        super.back()
    }
}
