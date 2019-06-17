//
//  TaskEditor.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 4/22/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//


//let hexCode = "#EC7063"
//self.view.backgroundColor = GHTColorCodeConverter.convertToUIColor(hexCode)

import UIKit
import GHTUIKit

class TaskEditor: EditorVC, UIObjectSetupLogic { //NavBarEnabledVC,  UIObjectSetupLogic {
    var task: Task?
    lazy var stackView: UIStackView = createStackView()
    lazy var scrollView: UIScrollView = createScrollView()
    lazy var nameTF: UITextField = createTextField("name")
    lazy var nameTV: UITextView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.delegate = self
        view.backgroundColor = .cyan
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
        layoutInStackView(nameTF, stackView)
        layoutInStackView(nameTV, stackView)
    }
    
    @objc override func save() {
        self.task  = Task(name: nameTF.text!, info: nameTV.text) //Task(name: nameTF.text!, notes: nameTV.text, storyPoints: 0, priority: 0) //(name: nameTF.text!, notes: "nameTV.text!", status: "Kanban", priorityRank: 0, storyPointsRank: 0, epic: nil)
        PersistenceManager.shared.save()
        delegate.save()
    }
    
}

extension TaskEditor: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if nameTF.text!.trimmingCharacters(in: .whitespaces).count > 0 {
            canSave = true
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if nameTF.text!.trimmingCharacters(in: .whitespaces).count > 0 {
            canSave = true
        }
    }
}







// var delegate: EditorVCNavigationDelegate!

//    @objc override func cancel() {
//        delegate.cancel()
//    }
//
//    @objc override func save() {
//        delegate.save()
//    }


//
//    let cancelBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
//    let saveBarButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(cancel))
//    lazy var stackView: UIStackView = createStackView()
//    lazy var scrollView: UIScrollView = createScrollView()
//    lazy var nameTF: UITextField = createTextField("name")
//    lazy var nameTV: UITextView = UITextView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setButtons(l: [cancelBarButton], r: [saveBarButton])
//        view.backgroundColor = .white
//        stackView.spacing = 15.0
//
//        let margins: CGFloat = 10.0
//        view.addSubview(scrollView)
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate( [
//            scrollView.topAnchor.constraint(equalTo: navBar.bottomAnchor, constant: 10.0),
//            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: margins),
//            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: margins),
//            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: (-1)*margins)
//            ])
//        layoutStackView(stackView, scrollView)
//        layoutInStackView(nameTF, stackView)
//        layoutInStackView(nameTV, stackView)
//    }
//
//    @objc open func cancel() {
//        dismiss(animated: true, completion: nil)
//    }
//    @objc open func save() {
//        dismiss(animated: true, completion: nil)
//    }
