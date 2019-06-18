//
//  StyledLabel.swift
//  PersonalKanban
//
//  Created by Hunter Buxton on 6/17/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//


//    convenience init() {
//        self.init(horizontalMargin: DefaultStyles.xMargin, verticalMargin: DefaultStyles.yMargin)
//    }
//
//    convenience init(_ text: String) {
//        self.init(horizontalMargin: DefaultStyles.xMargin, verticalMargin: DefaultStyles.yMargin)
//        self.text = text
//    }
//
//    convenience init(horizontalMargin: CGFloat, verticalMargin: CGFloat) {
//        self.init(frame: .zero)
//        self.horizontalInset = horizontalMargin
//        self.verticalInset = verticalMargin
//        applyDefaultStyles()
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }

//    override init() {
//        super.init(frame: .zero)
//        self.horizontalInset = horizontalMargin
//        self.verticalInset = verticalMargin
//    }

//    convenience init() {
//        self.init(horizontalMargin: DefaultStyles.xMargin, verticalMargin: DefaultStyles.yMargin)
//        applyDefaultStyles()
//    }

import Foundation
import GHTUIKit

class StyledLabel: MarginEnabledLabel {
    struct DefaultStyles {
        static let xMargin: CGFloat = 10.0
        static let yMargin: CGFloat = 5.0
        //static let borderWidth: CGFloat = 3.0
    }
    
    // MARK: Initializors
    convenience init(_ text: String?) {
        self.init()
        self.text = text
    }
    
    convenience init() {
        self.init(xInset: DefaultStyles.xMargin, yInset: DefaultStyles.yMargin)
    }
    
    override init(xInset: CGFloat, yInset: CGFloat) {
        super.init(xInset: xInset, yInset: yInset)
        applyDefaultStyles()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func applyDefaultStyles() {
        self.textColor = .darkText
        self.backgroundColor = UIColor.white // removing this will put the shadow behind the text, not the frame of the label
        self.sizeToFit()
        //self.layer.borderWidth = DefaultStyles.borderWidth
        self.shadowColor = UIColor.black //.cgColor
        self.layer.shadowOpacity = 0.75
        self.shadowOffset = .zero
        self.layer.shadowRadius = 6 //.equalTo(CGSize(width: 5.0, height: 5.0))
        //self.layer.borderColor = UIColor.lightGray.cgColor
    }
   
    
    //https://stackoverflow.com/questions/28786597/overriding-properties-in-swift
    // how to override a UIKit instance property in a subclass:
//    override public var horizontalInset: CGFloat {
//        get { return 2.0 }
//        set {}
//    }
//
//    override public var verticalInset: CGFloat {
//        get { return 2.0 }
//        set {}
//    }
//
}


////    convenience init(horizontalMargin: CGFloat, verticalMargin: CGFloat) {
////        self.init(horizontalMargin: horizontalMargin, verticalMargin: verticalMargin)
////        super.horizontalInset = horizontalMargin
////        super.verticalInset = verticalMargin
////    }
//
//    convenience init(horizontalMargin: CGFloat, verticalMargin: CGFloat) {
//        self.init(_ frame: frame)
//    }
//
//    override convenience init(frame: CGRect) {
//        self.init(frame: frame)
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }





//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
////
////    override init(horizontalMargins: CGFloat, verticalMargins: CGFloat) {
////        super.init(frame: frame)
////    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }

