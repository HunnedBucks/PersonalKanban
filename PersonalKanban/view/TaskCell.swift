//
//  TaskCell.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 6/16/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import UIKit

protocol TaskCellTableDelegate {
    func moveTaskCellToNextStatus(_ cell: TaskCell)
}

class TaskCell: UITableViewCell {
    // MARK: instance properties
    var delegate: TaskCellTableDelegate!
    weak var task: Task?
    public var title: String? {
        guard let task = self.task else {
            return nil
        }
        return task.name //.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    public var subtitle: String? {
        guard let task = self.task else {
            return nil
        }
        guard let text = task.info else {
            return nil
        }
        var cleanText = text.trimmingCharacters(in: .whitespaces)
        guard cleanText.count > 0 else {
            return nil
        }
        return cleanText
    }
    public var epicIcon: UIImage? {
        guard let task = self.task else {
            return nil
        }
        guard let epic = task.epic else {
            return nil
        }
        print("the epic was \(epic.name) (in TaskCell)")
        return UIImage(imageLiteralResourceName: "hamburger.png")
    }
    lazy var upButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(imageLiteralResourceName: "upArrow.png"), for: []) //backgroundImage(for: []) = //.gray
        button.addTarget(self, action: #selector(upBtnTapped), for: .touchUpInside)
        return button
    }()
    
    @objc public func upBtnTapped() {
        print("upBtn responded to tap")
        delegate.moveTaskCellToNextStatus(self)
    }
    
    // MARK: initializers
    convenience init(_ task: Task, _ tableDelegate: UITableViewController) {
        self.init(style: UITableViewCell.CellStyle.default , reuseIdentifier: GlobalConstants.ReuseIDs.TaskCell)
        self.task = task
        self.delegate = tableDelegate as! TaskCellTableDelegate
        loadCellDataFromTask()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: UITableViewCell method overrides
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        upButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(upButton)
        NSLayoutConstraint.activate([
            upButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor ),
            upButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor , constant: -10.0),
            upButton.heightAnchor.constraint(lessThanOrEqualToConstant: 30.0),
            upButton.widthAnchor.constraint(lessThanOrEqualToConstant: 30.0)
            ])
    }

    // MARK: private instance methods
    private func loadCellDataFromTask() {
        guard let task = self.task else {
            fatalError("the instance property task of TaskCell was nil")
        }
        self.textLabel?.text = self.title
        self.detailTextLabel?.text = self.subtitle
//        if self.imageView == nil {
//            print("no image view found")
//        }
        self.imageView?.image = self.epicIcon
        //?? "error this one has no name?"
        if let info = task.info {
            self.detailTextLabel?.text = info
        }
//        else {
//            self.detailTextLabel?.text = "the subtitle works, this is it"
//        }
        self.detailTextLabel?.text = "the subtitle works, this is it"
        if let epic = task.epic {
            // create icon for the associated epic
        }
        
    }
    
}



//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
