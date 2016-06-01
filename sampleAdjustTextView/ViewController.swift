//
//  ViewController.swift
//  sampleAdjustTextView
//
//  Created by Eriko Ichinohe on 2016/06/01.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var adjustTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        adjustTextView.frame = CGRectMake(0, 20, 320, 460)
        
        var accessoryView = UIView(frame: CGRectMake(0, 0, 320, 44))
        
        accessoryView.backgroundColor = UIColor.whiteColor()
        
        var closeButton = UIButton(frame: CGRectMake(240, 0, 80, 30))
        closeButton.setTitle("完了", forState: UIControlState.Normal)
        closeButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        closeButton.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        closeButton.addTarget(self, action: "onClickCloseButton:", forControlEvents: .TouchUpInside)
        accessoryView.addSubview(closeButton)
        adjustTextView.inputAccessoryView = accessoryView
        
        self.view.addSubview(adjustTextView)
    
    }
    
    func textViewShouldBeginEditing(textView: UITextView) -> Bool {
        adjustTextView.frame = CGRectMake(0, 20, 320, 200)
        print("edit")
        return true
    }
    
    func onClickCloseButton(sender: UIButton) {
        adjustTextView.resignFirstResponder()
        
        adjustTextView.frame = CGRectMake(0, 20, 320, 460)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

