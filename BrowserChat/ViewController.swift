//
//  ViewController.swift
//  BrowserChat
//
//  Created by Matthew Makai on 1/15/16.
//  Copyright © 2016 Matthew Makai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var addressBar: UITextField!
  @IBOutlet weak var webBrowser: UIWebView!
  @IBOutlet weak var goUrlButton: UIButton!

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let url = NSURL(string: "https://www.fullstackpython.com/")!
    webBrowser.loadRequest(NSURLRequest(URL: url))

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func goUrl(sender: AnyObject) {
    guard let validAddress = addressBar!.text else {
      return
    }
    let url = NSURL(string: validAddress)!
    webBrowser.loadRequest(NSURLRequest(URL: url))
  }
}

