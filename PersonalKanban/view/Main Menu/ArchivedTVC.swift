//
//  ArchivedTVC.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 5/19/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import UIKit
import GHTUIKit

class ArchivedTVC: MenuTC {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var delegate: ChildPresentationDelegate!
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate.transitionToNewDisplay(TaskVC())
    }

}
