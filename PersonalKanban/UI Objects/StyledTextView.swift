//
//  StyledTextView.swift
//  PersonalKanban
//
//  Created by Hunter Buxton on 6/17/19.
//  Copyright © 2019 GreyHydeTech. All rights reserved.
//

import Foundation
import GHTUIKit
import UIKit

class StyledTextView: PlaceholderEnabledTextView {
    override init(placeHolder: String?, text: String?){
        super.init(placeHolder: placeHolder, text: text)
        delegate = self
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

//
//public var contentInsets = UIEdgeInsets.zero
//open var horizontalInset: CGFloat = 15.0
//open var verticalInset: CGFloat = 15.0
//
//override open var intrinsicContentSize: CGSize {
//    return addInsets(to: super.intrinsicContentSize)
//}
//
//override open func sizeThatFits(_ size: CGSize) -> CGSize {
//    return addInsets(to: super.sizeThatFits(size))
//}
//
//// MARK: UILabel instance method overrides
//override open func draw(_ rect: CGRect, for formatter: UIViewPrintFormatter) {
//    let insetRect = rect.insetBy(dx: horizontalInset, dy: verticalInset) //CGRect.ins
//    super.draw(insetRect, for: formatter)//(in: insetRect) //(in: insetRect)
//}
////    override open func drawText(in rect: CGRect) {
////        let insetRect = rect.insetBy(dx: horizontalInset, dy: verticalInset) //CGRect.ins
////        super.drawText(in: insetRect) //(in: insetRect)
////    }
//
//// MARK: private insance methods
//private func addInsets(to size: CGSize) -> CGSize {
//    let width = size.width + contentInsets.left + contentInsets.right
//    let height = size.height + contentInsets.top + contentInsets.bottom
//    return CGSize(width: width, height: height)
//}
//
//// MARK: initilizers
////    convenience init()  {
////        self.init(frame: .zero, textContainer: nil)
////       // self.init(xInset: 10.0,  yInset: 15.0)
////
////        defaultStyles()
////    }
////
//convenience init(text: String) {
//    self.init(frame: .zero, textContainer: nil)
//    // self.init(xInset: 10.0,  yInset: 15.0)
//    defaultStyles()
//}
//
//public init(margin: CGFloat) {
//    super.init(frame: .zero, textContainer: NSTextContainer())
//    self.horizontalInset = margin
//    self.verticalInset = margin
//}
//
//public init(horizontalMargin: CGFloat, verticalMargin: CGFloat)  {
//    super.init(frame: .zero, textContainer: NSTextContainer())
//    self.horizontalInset = horizontalMargin
//    self.verticalInset = verticalMargin
//}
//
//
//
////    convenience init() {
////       // let textContainer = NSTextContainer(size: )
////        self.init(frame: .zero, textContainer: NSTextContainer(size: frame.size))
////    }
//
////let size = frame.size
//// let textContainer = NSTextContainer(size: addInsets(to: size))
//// self.textContainer.size = addInsets(to: size)
////defaultStyles() // = textContainer //textContainerInset(draw( frame.insetBy(dx: 10.0, dy:
//
////    public init(xInset: CGFloat, yInset: CGFloat)  {
////      //  let frame = CGRect.zero
////        let textContainer = NSTextContainer(size: CGRect.zero.size)
////        super.init(frame: .zero, textContainer: textContainer)
////        self.horizontalInset = xInset
////        self.verticalInset = yInset
////       // defaultStyles()
////    }
//
//convenience init() {
//    self.init(xInset: 10.0, yInset: 5.0)
//    
//    defaultStyles()
//}
//
//public init(xInset: CGFloat, yInset: CGFloat)  {
//    super.init(frame: .zero, textContainer: NSTextContainer(size: CGRect.zero.size))
//    self.horizontalInset = xInset
//    self.verticalInset = yInset
//}
//
//override public init(frame: CGRect, textContainer: NSTextContainer?) {
//    super.init(frame: frame, textContainer: textContainer)
//}
//
//required public init?(coder aDecoder: NSCoder) {
//    super.init(coder: aDecoder)
//}
//
//func defaultStyles() {
//    self.textColor = .black
//    self.backgroundColor = UIColor.blue // removing this will put the shadow behind the text, not the frame of the label
//    self.sizeToFit()
//    //self.layer.borderWidth = DefaultStyles.borderWidth
//    self.layer.shadowColor = UIColor.black.cgColor
//    self.layer.shadowOpacity = 0.75
//    self.layer.shadowOffset = .zero
//    self.layer.shadowRadius = 6 //.equalTo(CGSize(width: 5.0, height: 5.0))
//    self.text = "nameLbl.shadowColor = .lightGray// nameLbl.layer.borderWidth = 1.0//nameLbl.layer.borderColor = UIColor.lightGray.cgColor// nameLbl.intrinsicContentSize."
//    //  inse
//    // self.insertText(text)
//    //self.layer.borderColor = UIColor.lightGray.cgColor
//}
//
//
///*
// // Only override draw() if you perform custom drawing.
// // An empty implementation adversely affects performance during animation.
// override func draw(_ rect: CGRect) {
// // Drawing code
// }
// */
//    
