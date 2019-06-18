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

//https://useyourloaf.com/blog/scrolling-stack-views/

class TaskEditor: EditorVC {//}, UIObjectSetupLogic { //NavBarEnabledVC,  UIObjectSetupLogic {
    
    lazy var stackView: UIStackView = UIStackView()
    lazy var scrollView: UIScrollView = UIScrollView()
    
    lazy var v: UITextView = UITextView()
    lazy var v1: UITextView = UITextView()
    lazy var v2: UITextView = UITextView()
    lazy var v3: UITextView = UITextView()
    lazy var v4: UITextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scrollView)
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor).isActive = true
        self.view.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true
        self.view.topAnchor.constraint(equalTo: self.scrollView.topAnchor).isActive = true
        self.view.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor).isActive = true
        
        self.scrollView.addSubview(stackView)
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 20.0
        
        self.stackView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor).isActive = true
        self.stackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true
        self.stackView.topAnchor.constraint(equalTo: self.scrollView.topAnchor).isActive = true
        self.stackView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor).isActive = true
        self.stackView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        
        v.translatesAutoresizingMaskIntoConstraints = false
        v1.translatesAutoresizingMaskIntoConstraints = false
        v2.translatesAutoresizingMaskIntoConstraints = false
        v3.translatesAutoresizingMaskIntoConstraints = false
        v4.translatesAutoresizingMaskIntoConstraints = false
        
        v.
        
    }
    
}

