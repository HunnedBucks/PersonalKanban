//
//  TaskReaderVC.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 6/16/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import UIKit
import GHTUIKit

class TaskReaderVC: ReaderVC, UIObjectSetupLogic {
    var task: Task!
    lazy var stackView: UIStackView = createStackView()
    lazy var scrollView: UIScrollView = createScrollView()
    lazy var nameLbl: UILabel = createLabel("name would be here")
    lazy var somethingLbl = UITextView() //UILabel = createLabel("something else would be here")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        stackView.spacing = 15.0
        let margins: CGFloat = 10.0
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate( [
            scrollView.topAnchor.constraint(equalTo: navBar.bottomAnchor, constant: 10.0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: margins),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: margins),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: (-1)*margins)
            ])
        layoutStackView(stackView, scrollView)
        layoutInStackView(nameLbl, stackView)
        layoutInStackView(somethingLbl, stackView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nameLbl.text = task.name
    }
    
    @objc override func back() {
        delegate.back()
    }
}
