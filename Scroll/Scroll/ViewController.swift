//
//  ViewController.swift
//  Scroll
//
//  Created by Veronika Sazonova on 28.02.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardAppear), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDisappear), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @IBAction func button(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    var isExpand : Bool = false
    
    @objc func keyboardAppear(){
        print("Call")
        if !isExpand {
            print("Call = EXECUTE")
            self.scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.scrollView.frame.height + 300)
            isExpand = true
        }
    }
    
    @objc func keyboardDisappear(){
        
        if isExpand {
            self.scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.scrollView.frame.height - 300)
            isExpand = false
        }
    }
}

