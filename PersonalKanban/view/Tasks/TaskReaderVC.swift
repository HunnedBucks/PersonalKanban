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
    static let str = "nameLbl.shadowColor = .lightGray// nameLbl.layer.borderWidth = 1.0//nameLbl.layer.borderColor = UIColor.lightGray.cgColor// nameLbl.intrinsicContentSize."
    let tempMargin: CGFloat = 10.0
    var task: Task!
    lazy var stackView: UIStackView = createStackView()
    lazy var scrollView: UIScrollView = createScrollView()
    lazy var nameLbl: StyledLabel = StyledLabel(task.name)
    //lazy var infoTextView = MarginEnabledTextView()
    //(xInset: CGFloat, yInset: CGFloat) //(horizontalMargin: 10.0, verticalMargin: 5.0)
    lazy var infoTextView = PlaceholderEnabledTextView() //UITextView()
    lazy var notesTextView = PlaceholderEnabledTextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        stackView.spacing = 15.0
        self.view.backgroundColor = .groupTableViewBackground

        //infoTextView.text = TaskReaderVC.str
       // infoTextView.textContainerInset = UIEdgeInsets(top: tempMargin, left: tempMargin, bottom: tempMargin, right: tempMargin)
        
        //nameLbl.shadowColor = .lightGray
       // nameLbl.layer.borderWidth = 1.0
        //nameLbl.layer.borderColor = UIColor.lightGray.cgColor
       // nameLbl.intrinsicContentSize.
       // infoTextView.text = "nameLbl.shadowColor = .lightGray// nameLbl.layer.borderWidth = 1.0//nameLbl.layer.borderColor = UIColor.lightGray.cgColor// nameLbl.intrinsicContentSize."
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
        layoutInStackView(infoTextView, stackView)
         layoutInStackView(notesTextView, stackView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       // nameLbl.text = task.name
    }
    
    @objc override func back() {
        delegate.back()
    }
}
