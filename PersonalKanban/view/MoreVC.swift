//
//  MoreVC.swift
//  NakedKanban
//
//  Created by Hunter Buxton on 4/23/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import UIKit
import GHTUIKit

class MoreVC: MenuTC {

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

        items = ["more 1", "more 2", "more 3"]
        // Do any additional setup after loading the view.
    }
    
    var delegate: ChildPresentationDelegate!
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate.transitionToNewDisplay(TaskVC())
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
