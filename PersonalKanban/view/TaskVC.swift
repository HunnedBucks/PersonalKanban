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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupEditorVC() -> UIViewController {
        let e = self.editor ?? TaskEditor()
        e.delegate = self
        return e
    }
    
    override func setupViewerVC() -> UIViewController {
        let r = self.reader ?? TaskReaderVC()
        r.delegate = self
        return r
    }
    
    @objc override func back() {
        super.back()
    }
}
