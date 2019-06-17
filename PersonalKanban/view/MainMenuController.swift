//
//  MainVC.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 4/22/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import UIKit
import GHTUIKit

enum HamburgerMenuItems: String {
    case Kanban = "Kanban Board"
    case Epics = "Epics"
    case Backlog = "Backlog"
    case Archive = "Archive"
    case More = "More"
}

class MainMenuController: HamburgerNavigatorVC, ChildPresentationDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func setMenuAndViewControllers() {
        let vc1 = KanbanBoardTableVC(delegate: self)
        let vc2 = EpicsTableVC(delegate: self)
        let vc3 = BacklogTC(delegate: self)
        let vc4 = ArchivedTVC(delegate: self)
        let vc5 = MoreVC(delegate: self)
        hamburgerMenuVCs = [vc1,vc2,vc3,vc4,vc5]
        menuButtonTitles = [HamburgerMenuItems.Kanban.rawValue,
                            HamburgerMenuItems.Epics.rawValue,
                            HamburgerMenuItems.Backlog.rawValue,
                            HamburgerMenuItems.Archive.rawValue,
                            HamburgerMenuItems.More.rawValue]
    }

    override open func viewWillAppear(_ animated: Bool) {
        let button1 = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped(_:)))
        rightBarBtns = [button1]
    }

    @objc func addButtonTapped(_ sender: UIBarButtonItem!) {
        super.slideMenuIn()
        let vc = TaskVC()
        present(vc, animated: true, completion: nil)
    }
    
    override func transitionToNewDisplay(_ vcToPresent: UIViewController) {
        super.transitionToNewDisplay(vcToPresent)
    }
}

