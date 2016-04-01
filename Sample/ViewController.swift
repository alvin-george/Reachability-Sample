//
//  ViewController.swift
//  Sample
//
//  Created by fingent on 11/02/16.
//  Copyright © 2016 fingent. All rights reserved.
//

import UIKit

class ViewController: UIappViewController {
  var reachability:Reachability?

  override func viewDidLoad() {
    super.viewDidLoad()
    manager.delegate = self

    if(AppManager.sharedInstance.isReachability)
    {
      print("net available")
      //call API from here.

    } else {
      dispatch_async(dispatch_get_main_queue()) {
        print("net not available")
        //Show Alert
      }
    }


    //Determine Network Type
    if(AppManager.sharedInstance.reachabiltyNetworkType == "Wifi")
    {
      print(".Wifi")
    }
    else if (AppManager.sharedInstance.reachabiltyNetworkType == "Cellular")
    {
      print(".Cellular")
    }
    else {
      dispatch_async(dispatch_get_main_queue()) {
        print("Network not reachable")
      }
    }

  }
  override func viewWillAppear(animated: Bool) {
  }
  override func didReceiveMemoryWarning() {
  }
}

