//
//  ViewController.swift
//  ActionSheetDemo
//
//  Created by Karthi on 15/06/17.
//  Copyright © 2017 Tringapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ipadShow: UIButton!
    @IBOutlet var ipadAdd: UIButton!
    var addCount : Int = 0
    var bookNowCount : Int = 0
    @IBAction func bookShows(_ sender: Any) {
    
        let actionSheet = UIAlertController.init(title: "Book Shows", message: "Confirm booking", preferredStyle:.actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Book Now", style:.default, handler: {(nil)->Void in self.bookNowCount = self.bookNowCount+1
        print(self.bookNowCount)}))
        actionSheet.addAction(UIAlertAction(title: "Delete", style: .default, handler: nil))
        
                if let popOverViewController = actionSheet.popoverPresentationController{
                    popOverViewController.sourceView = sender as? UIView
                    popOverViewController.sourceRect = (sender as AnyObject).bounds
            }

        
        present(actionSheet, animated: true, completion: nil)        
    }
    @IBAction func addDetails(_ sender: Any) {
        let actionSh = UIAlertController.init(title: "Add Details", message: "Submit Details", preferredStyle:UIAlertControllerStyle.actionSheet)
        actionSh.addAction(UIAlertAction(title: "Add Now", style:.default){(nil) -> Void in
            self.addCount = self.addCount+1
            print(self.addCount)
            })
        actionSh.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: nil))
        if let popOverViewController = actionSh.popoverPresentationController{
            popOverViewController.sourceView = sender as? UIView
            popOverViewController.sourceRect = (sender as AnyObject).bounds
        }

        present(actionSh, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

